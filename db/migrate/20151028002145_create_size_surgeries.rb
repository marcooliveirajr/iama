class CreateSizeSurgeries < ActiveRecord::Migration
  def change
    create_table :size_surgeries do |t|
      t.references :health_insurance, index: true, foreign_key: true
      t.integer :size
      t.float :value

      t.timestamps null: false
    end
  end
end
