class AddReceiptDayToMaps < ActiveRecord::Migration
  def change
    add_column :maps, :receipt_day, :datetime
  end
end
