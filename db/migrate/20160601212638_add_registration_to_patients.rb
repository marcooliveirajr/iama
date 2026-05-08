class AddRegistrationToPatients < ActiveRecord::Migration[4.2]
  def change
    add_column :patients, :registration, :string
  end
end

