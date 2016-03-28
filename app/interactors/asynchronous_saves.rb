# frozen_string_literal: true
class AsynchronousSaves
  include Interactor

  def call
    if context.user.present?
      context.user.delay.save! if context.user.valid?
    end
  end
end
