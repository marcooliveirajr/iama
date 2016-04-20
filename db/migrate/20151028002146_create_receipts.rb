class CreateReceipts < ActiveRecord::Migration
  def change
    create_table :receipts do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
