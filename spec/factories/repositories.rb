# frozen_string_literal: true
FactoryGirl.define do
  factory :repository do
    name 'MyString'
    language 'MyString'
    stargazers_count 1
    description 'MyText'

    association :owner, factory: :user
  end

  factory :invalid_repository, class: :Repository do
    owner nil
    name nil
    language nil
    stargazers_count nil
    description nil
  end
end
