class AddTussToMaps < ActiveRecord::Migration
  def change
  	add_column :maps, :tuss2_id, :integer
  	add_column :maps, :tuss3_id, :integer
  	add_column :maps, :tuss4_id, :integer
  	add_column :maps, :tuss5_id, :integer
  	add_column :maps, :via_unique2, :boolean
  	add_column :maps, :via_unique3, :boolean
  	add_column :maps, :via_unique4, :boolean
  	add_column :maps, :via_unique5, :boolean
  end
end
