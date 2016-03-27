class GithubSort < EnumerateIt::Base
  associate_values(:full_name, :created, :updated, :pushed)
end
