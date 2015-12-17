class Patient < ActiveRecord::Base
  validates :name, presence: { message: 'Necessário informar um nome' }
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, message: 'Necessário informar um email válido' }
end
