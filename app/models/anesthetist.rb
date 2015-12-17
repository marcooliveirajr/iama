class Anesthetist < ActiveRecord::Base
  validates :name, presence: { message: 'Necessário informar um nome' }
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, message: 'Necessário informar um email válido' }
  # validates :seat_amount,
  #           numericality: { greater_than_or_equal_to: 4, less_than_or_equal_to: 70, message: 'Quantidade deve ser maior que 3 e menor que 71' },
  #           presence:     { message: 'Necessário informar a quantidade de assentos.' }

end
