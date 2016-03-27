# frozen_string_literal: true
class HomeController < ApplicationController
  def index
    github = Github.new(params[:username])

    @repos = github.repos(params_search)
    @user = github.user
  end

  private

  def params_search
    params.slice('controller', 'type', 'sort', 'direction')
  end
end
