class AddEndTimeToMaps < ActiveRecord::Migration[4.2]
  def change
    add_column :maps, :end_time, :datetime
  end
end

