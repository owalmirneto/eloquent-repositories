# frozen_string_literal: true
class HomeController < ApplicationController
  def index
    result = SaveUserAndRepositories.call(username: params[:username])

    if result.user
      @user = result.user.decorate

      @repositories = result.user.repositories
                            .includes(:owner)
                            .ordination(params)
                            .filter(params).decorate
    end
  end
end
