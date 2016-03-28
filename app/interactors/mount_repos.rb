# frozen_string_literal: true
class MountRepos
  include Interactor

  def call
    return unless context.github.present?

    context.repos = context.github.repos(type: :all)

    if context.repos.success?
      context.repos.each do |repo|
        repo_params = repo.slice 'name', 'language', 'stargazers_count',
                                 'description', 'created_at', 'updated_at'
        repository = Repository.new(repo_params)
        repository.owner = context.user
        context.user.repositories << repository
      end
    end
  end
end
