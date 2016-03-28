# frozen_string_literal: true
class SetGithubUser
  include Interactor

  def call
    context.github = Github.new(context.username) unless context.user.present?
  end
end
