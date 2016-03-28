# frozen_string_literal: true
class SearchUser
  include Interactor

  def call
    context.user = User.find_by(login: context.username) if context.username.present?
  end
end
