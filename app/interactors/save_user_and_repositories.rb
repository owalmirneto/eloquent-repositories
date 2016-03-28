# frozen_string_literal: true
class SaveUserAndRepositories
  include Interactor::Organizer

  organize SearchUser, SetGithubUser, MountUser, MountRepos, AsynchronousSaves
end
