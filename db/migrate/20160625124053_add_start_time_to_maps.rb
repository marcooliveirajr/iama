class AddStartTimeToMaps < ActiveRecord::Migration[4.2]
  def change
    add_column :maps, :start_time, :datetime
  end
end

