class CreateHealthTerminologies < ActiveRecord::Migration
  def change
    create_table :health_terminologies do |t|
      t.integer :code_tuss, :limit => 8
      t.string :description_tuss
      t.string :category_tuss
      t.integer :size
      t.integer :version

      t.timestamps null: false
    end
  end
end
