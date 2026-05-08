class AddRecipientToPaymentMaps < ActiveRecord::Migration[4.2]
  def change
    add_column :payment_maps, :recipient, :string
  end
end

