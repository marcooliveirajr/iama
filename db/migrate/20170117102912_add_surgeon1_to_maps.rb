class AddSurgeon1ToMaps < ActiveRecord::Migration[4.2]
  def change
    add_column :maps, :surgeon1, :integer
  end
end

