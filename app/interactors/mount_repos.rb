# frozen_string_literal: true
class MountRepos
  include Interactor

  def call
    return unless context.github.present?
    context.repos = context.github.repos(type: :all)

    if context.repos.success?
      context.repositories = context.repos.map do |repo|
        repo_params = repo.slice 'name', 'language', 'stargazers_count',
                                 'description', 'created_at', 'updated_at'
        [repo['owner']['login'], Repository.new(repo_params)]
      end
    end
  end
end
