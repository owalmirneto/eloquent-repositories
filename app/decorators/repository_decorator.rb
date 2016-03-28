# frozen_string_literal: true
class RepositoryDecorator < Draper::Decorator
  delegate_all

  def owner_login
    object.owner.login if object.owner
  end

  def updated_date
    h.l object.updated_at, format: :long
  end
end
