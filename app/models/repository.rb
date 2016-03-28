# frozen_string_literal: true
class Repository < ActiveRecord::Base
  # associations
  belongs_to :owner, class_name: :User
  has_and_belongs_to_many :users

  # validations
  validates :name, presence: true
  validates :owner, presence: true, associated: true

  # scopes
  scope :filter, -> (params) do
    case params[:type]
    when 'owner'
      where(users: { login: params[:username] })
    when 'member'
      where.not(users: { login: params[:username] })
    end
  end

  scope :ordination, -> (params) do
    case params[:sort]
    when 'update'
      order(updated_at: params[:direction])
    when 'created'
      order(created_at: params[:direction])
    when 'full_name'
      order(name: params[:direction])
    end
  end
end
