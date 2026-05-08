class AddReceiptValueToMaps < ActiveRecord::Migration[4.2]
  def change
    add_column :maps, :receipt_value, :float
  end
end

