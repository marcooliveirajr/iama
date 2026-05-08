class AddRegistrationToSurgeons < ActiveRecord::Migration[4.2]
  def change
    add_column :surgeons, :registration, :string
  end
end

