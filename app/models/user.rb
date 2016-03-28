# frozen_string_literal: true
class User < ActiveRecord::Base
  # associations
  has_many :repositories, foreign_key: :owner_id

  # validations
  validates :login, presence: true
end
