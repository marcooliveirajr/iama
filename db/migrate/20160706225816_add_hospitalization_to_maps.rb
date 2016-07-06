class AddHospitalizationToMaps < ActiveRecord::Migration
  def change
    add_column :maps, :hospitalization, :string
  end
end
