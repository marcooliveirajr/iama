class AddPayDayToPaymentMaps < ActiveRecord::Migration
  def change
    add_column :payment_maps, :pay_day, :datetime
  end
end
