# frozen_string_literal: true
class HomeController < ApplicationController
  def index
    github = Github.new(params[:username])

    @repos = github.repos
    @user = github.user
  end
end
