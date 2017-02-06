class PaymentMap < ActiveRecord::Base
  usar_como_dinheiro :payment_value, :paid_value
  belongs_to :map
end
