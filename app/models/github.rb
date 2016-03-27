# frozen_string_literal: true
class Github
  include HTTParty
  base_uri 'https://api.github.com'

  def initialize(username)
    @username = username
  end

  def user
    @user ||= get_by("/users/#{@username}")
  end

  def repos(options = {})
    @repos ||= get_by("/users/#{@username}/repos", options)
  end

  protected

  def get_by(url, options = {})
    self.class.get("#{url}?access_token=#{ENV['GITHUB_ACCESS_TOKEN']}&#{options.to_query}")
  end
end
