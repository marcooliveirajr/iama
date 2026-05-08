class AddAnesthetist1ToMaps < ActiveRecord::Migration[4.2]
  def change
    add_column :maps, :anesthetist1, :integer
  end
end

