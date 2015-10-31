class CreateHealthTerminologies < ActiveRecord::Migration
  def change
    create_table :health_terminologies do |t|
      t.integer :code_tuss
      t.string :description_tuss
      t.string :category_tuss
      t.integer :ch_surgeon
      t.integer :size
      t.integer :number_aux
      t.integer :version

      t.timestamps null: false
    end
  end
end
