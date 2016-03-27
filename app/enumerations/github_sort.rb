# frozen_string_literal: true
class GithubSort < EnumerateIt::Base
  associate_values(:full_name, :created, :updated, :pushed)
  sort_by :none
end
