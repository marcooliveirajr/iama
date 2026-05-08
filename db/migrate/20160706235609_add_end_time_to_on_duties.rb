class AddEndTimeToOnDuties < ActiveRecord::Migration[4.2]
  def change
    add_column :on_duties, :end_time, :datetime
  end
end

