class CreateHealthTerminologies < ActiveRecord::Migration[4.2]
  def change
    create_table :health_terminologies do |t|
      t.integer :code_tuss, :limit => 8
      t.string :description_tuss
      t.integer :measure
      t.belongs_to :version, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

