# frozen_string_literal: true
class HomeController < ApplicationController
  def index
    result = SaveUserAndRepositories.call(username: params[:username])

    @user = result.user

    @repositories = @user.repositories.includes(:owner)
      .filter(params).ordination(params) if @user
  end
end
