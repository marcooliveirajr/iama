class AddAnesthetist2ToMaps < ActiveRecord::Migration[4.2]
  def change
    add_column :maps, :anesthetist2, :integer
  end
end

