class CreateOutputs < ActiveRecord::Migration[4.2]
  def change
    create_table :outputs do |t|
      t.string :name
      t.references :category, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

