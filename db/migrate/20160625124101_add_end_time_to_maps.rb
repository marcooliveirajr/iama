class AddEndTimeToMaps < ActiveRecord::Migration
  def change
    add_column :maps, :end_time, :datetime
  end
end
