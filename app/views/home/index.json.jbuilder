# frozen_string_literal: true
json.user do
  json.extract! @user, :name, :login, :avatar_url, :company, :location, :created_at, :updated_at
end

json.repositories do
  json.array! @repositories do |repository|
    json.owner do
      json.extract! repository.owner, :login
    end

    json.extract! repository, :name, :language, :stargazers_count, :created_at, :updated_at
  end
end
