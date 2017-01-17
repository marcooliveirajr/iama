class AddReceiptValueToMaps < ActiveRecord::Migration
  def change
    add_column :maps, :receipt_value, :float
  end
end
