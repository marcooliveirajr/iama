class Patient < ApplicationRecord
  has_many :map, dependent: :restrict_with_error
  validates :name, presence: { message: :required_name }
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, message: :valid_email, allow_blank: true }
  #validates :age, format: { with: /([0-9]{1,7})/, message: 'Não é um número válido' }
end

