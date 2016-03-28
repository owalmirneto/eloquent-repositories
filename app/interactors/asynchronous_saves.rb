# frozen_string_literal: true
class AsynchronousSaves
  include Interactor

  def call
    if context.user.present?
      if context.repositories.present?
        context.repositories.map do |owner, repository|
          if context.user.login == owner
            repository.owner = context.user
          else
            repository.owner = User.find_by(login: owner)
            repository.owner = User.create(login: owner) unless repository.owner.present?
          end

          context.user.repositories << repository
        end
      end

      context.user.delay.save! if context.user.valid?
    end
  end
end
