class AddEndTimeToOnDuties < ActiveRecord::Migration
  def change
    add_column :on_duties, :end_time, :datetime
  end
end
