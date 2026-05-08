class AddHospitalizationToMaps < ActiveRecord::Migration[4.2]
  def change
    add_column :maps, :hospitalization, :string
  end
end

