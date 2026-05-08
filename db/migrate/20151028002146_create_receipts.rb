class CreateReceipts < ActiveRecord::Migration[4.2]
  def change
    create_table :receipts do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end

