class AddAnesthetist1ToMaps < ActiveRecord::Migration
  def change
    add_column :maps, :anesthetist1, :integer
  end
end
