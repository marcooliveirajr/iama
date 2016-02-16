class CreateSizeSurgeries < ActiveRecord::Migration
  def change
    create_table :size_surgeries do |t|
      t.references :health_insurance, index: true, foreign_key: true
      t.integer :measure
      t.float :value_measure

      t.timestamps null: false
    end
  end
end
