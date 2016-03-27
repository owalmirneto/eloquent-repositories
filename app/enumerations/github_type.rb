class GithubType < EnumerateIt::Base
  associate_values(:all, :owner, :member)
end
