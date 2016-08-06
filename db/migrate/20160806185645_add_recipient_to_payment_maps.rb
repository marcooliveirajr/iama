class AddRecipientToPaymentMaps < ActiveRecord::Migration
  def change
    add_column :payment_maps, :recipient, :string
  end
end
