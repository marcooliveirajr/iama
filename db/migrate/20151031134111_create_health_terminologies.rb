class CreateHealthTerminologies < ActiveRecord::Migration
  def change
    create_table :health_terminologies do |t|
      t.integer :code_tuss, :limit => 8
      t.string :description_tuss
      t.string :category_tuss
      t.integer :measure
      t.belongs_to :version, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
