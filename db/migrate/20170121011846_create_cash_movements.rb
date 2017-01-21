class CreateCashMovements < ActiveRecord::Migration
  def change
    create_table :cash_movements do |t|
      t.string :document
      t.datetime :time_movement
      t.text :movement_note
      t.float :movement_value
      t.references :input, index: true, foreign_key: true
      t.references :output, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
