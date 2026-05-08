class AddPayDayToPaymentMaps < ActiveRecord::Migration[4.2]
  def change
    add_column :payment_maps, :pay_day, :datetime
  end
end

