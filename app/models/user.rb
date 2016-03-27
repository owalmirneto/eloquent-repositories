# frozen_string_literal: true
class User < ActiveRecord::Base
  # associations
  has_one :repository, foreign_key: :owner_id
  has_and_belongs_to_many :repositories

  # validations
  validates :login, presence: true
end
