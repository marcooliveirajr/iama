class Surgeon < ActiveRecord::Base
  validates :name, presence: { message: :required_name }
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, message: :valid_email }
end
