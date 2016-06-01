class AddRegistrationToSurgeons < ActiveRecord::Migration
  def change
    add_column :surgeons, :registration, :string
  end
end
