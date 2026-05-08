class AddAgeToPatients < ActiveRecord::Migration[4.2]
  def change
    add_column :patients, :age, :integer
  end
end

