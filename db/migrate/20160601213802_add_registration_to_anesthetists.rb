class AddRegistrationToAnesthetists < ActiveRecord::Migration[4.2]
  def change
    add_column :anesthetists, :registration, :string
  end
end

