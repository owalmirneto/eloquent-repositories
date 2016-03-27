# frozen_string_literal: true
FactoryGirl.define do
  factory :user do
    login 'MyString'
    avatar_url 'MyString'
    name 'MyString'
    company 'MyString'
    blog 'MyString'
    location 'MyString'
    email 'MyString'
  end

  factory :invalid_user, class: :User do
    login nil
    avatar_url nil
    name nil
    company nil
    blog nil
    location nil
    email nil
  end
end
