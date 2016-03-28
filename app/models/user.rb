# frozen_string_literal: true
class User < ActiveRecord::Base
  # associations
  has_and_belongs_to_many :repositories, class_name: 'Repository'

  # validations
  validates :login, presence: true
end
