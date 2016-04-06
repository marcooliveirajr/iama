class AddReceiptsToMaps < ActiveRecord::Migration
  def change
    add_column :maps, :receipt_id, :integer
  end
end
