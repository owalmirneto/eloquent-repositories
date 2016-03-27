# frozen_string_literal: true
class Github
  include HTTParty
  base_uri 'https://api.github.com'

  def initialize(username)
    @username = username
  end

  def user(_options = {})
    @user ||= self.class.get("/users/#{@username}")
  end

  def repos(_options = {})
    @repos ||= self.class.get("/users/#{@username}/repos")
  end
end
