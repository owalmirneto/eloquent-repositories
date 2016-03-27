# frozen_string_literal: true
class Repository < ActiveRecord::Base
  # relationships
  belongs_to :owner

  # validations
  validates :name, presence: true
  validates :owner, presence: true, associated: true
end
