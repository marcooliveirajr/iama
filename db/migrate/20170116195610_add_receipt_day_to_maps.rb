class AddReceiptDayToMaps < ActiveRecord::Migration[4.2]
  def change
    add_column :maps, :receipt_day, :datetime
  end
end

