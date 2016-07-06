class AddPasswordToMaps < ActiveRecord::Migration
  def change
    add_column :maps, :password, :string
  end
end
