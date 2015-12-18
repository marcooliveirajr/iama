class Anesthetist < ActiveRecord::Base
  validates :name, presence: { message: :required_name }
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, message: :valid_email }
  # validates :seat_amount,
  #           numericality: { greater_than_or_equal_to: 4, less_than_or_equal_to: 70, message: 'Quantidade deve ser maior que 3 e menor que 71' },
  #           presence:     { message: 'Necessário informar a quantidade de assentos.' }

end
