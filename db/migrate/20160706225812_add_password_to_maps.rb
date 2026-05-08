class AddPasswordToMaps < ActiveRecord::Migration[4.2]
  def change
    add_column :maps, :password, :string
  end
end

