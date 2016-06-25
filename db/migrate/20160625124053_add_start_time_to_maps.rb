class AddStartTimeToMaps < ActiveRecord::Migration
  def change
    add_column :maps, :start_time, :datetime
  end
end
