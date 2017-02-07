class AddAnesthetist2ToMaps < ActiveRecord::Migration
  def change
    add_column :maps, :anesthetist2, :integer
  end
end
