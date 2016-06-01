class AddRegistrationToAnesthetists < ActiveRecord::Migration
  def change
    add_column :anesthetists, :registration, :string
  end
end
