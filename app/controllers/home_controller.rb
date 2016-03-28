# frozen_string_literal: true
class HomeController < ApplicationController
  def index
    result = SaveUserAndRepositories.call(username: params[:username])

    @user = result.user
    @repositories = @user.repositories.includes(:owner) if @user # .search(search_params)
  end

  private

  def search_params
    params.permit(:type, :sort, :direction)
  end
end
