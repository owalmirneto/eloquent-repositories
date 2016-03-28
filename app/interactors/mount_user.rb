# frozen_string_literal: true
class MountUser
  include Interactor

  def call
    if context.github.present?
      context.github_user = context.github.user

      if context.github_user.success?
        user_params = context.github_user.slice 'name', 'login', 'avatar_url',
                                                'company', 'blog', 'location',
                                                'email', 'created_at', 'updated_at'
        context.user = User.new(user_params)
      end
    end
  end
end
