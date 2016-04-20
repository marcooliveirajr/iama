class AddTussToMaps < ActiveRecord::Migration
  def change
  	add_column :maps, :tuss2, :integer
  	add_column :maps, :tuss3, :integer
  	add_column :maps, :tuss4, :integer
  	add_column :maps, :tuss5, :integer
  	add_column :maps, :via_unique2, :boolean
  	add_column :maps, :via_unique3, :boolean
  	add_column :maps, :via_unique4, :boolean
  	add_column :maps, :via_unique5, :boolean
  end
end
