class AddRegistrationToPatients < ActiveRecord::Migration
  def change
    add_column :patients, :registration, :string
  end
end
