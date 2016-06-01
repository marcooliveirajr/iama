class AddNamePatientToMaps < ActiveRecord::Migration
  def change
    add_column :maps, :registration, :string
  end
end
