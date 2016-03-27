# frozen_string_literal: true
class GithubType < EnumerateIt::Base
  associate_values(:all, :owner, :member)
end
