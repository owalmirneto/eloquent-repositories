# frozen_string_literal: true
class User < ActiveRecord::Base
  # validations
  validates :login, presence: true
end
