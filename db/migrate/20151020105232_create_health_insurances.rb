class CreateHealthInsurances < ActiveRecord::Migration
  def change
    create_table :health_insurances do |t|
      t.string :name
      t.string :type
      t.boolean :status

      t.timestamps null: false
    end
  end
end
