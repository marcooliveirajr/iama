class CreateHospitals < ActiveRecord::Migration
  def change
    create_table :hospitals do |t|
      t.string :name
      t.string :type
      t.boolean :status

      t.timestamps null: false
    end
  end
end
