# frozen_string_literal: true
class Repository < ActiveRecord::Base
  # associations
  belongs_to :owner, class_name: :User
  has_and_belongs_to_many :users

  # validations
  validates :name, presence: true
  validates :owner, presence: true, associated: true
end
