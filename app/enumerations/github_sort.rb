# frozen_string_literal: true
class GithubSort < EnumerateIt::Base
  associate_values(:full_name, :created, :updated)
  sort_by :none
end
