class AddNamePatientToMaps < ActiveRecord::Migration[4.2]
  def change
    add_column :maps, :registration, :string
  end
end

