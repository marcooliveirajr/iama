class AddSurgeon2ToMaps < ActiveRecord::Migration
  def change
    add_column :maps, :surgeon2, :integer
  end
end
