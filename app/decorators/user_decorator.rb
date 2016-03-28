# frozen_string_literal: true
class UserDecorator < Draper::Decorator
  delegate_all

  def username
    "@#{object.login}" if object.login
  end

  def link_to_email
    h.link_to object.email, "mailto:#{object.email}"
  end

  def created_date
    h.l object.created_at, format: :long
  end
end
