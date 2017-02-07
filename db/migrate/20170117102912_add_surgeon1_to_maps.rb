class AddSurgeon1ToMaps < ActiveRecord::Migration
  def change
    add_column :maps, :surgeon1, :integer
  end
end
