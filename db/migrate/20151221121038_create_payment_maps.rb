class CreatePaymentMaps < ActiveRecord::Migration[4.2]
  def change
    create_table :payment_maps do |t|
      t.references :map, index: true, foreign_key: true
      t.integer :payment_id
      t.datetime :payment_date
      t.float :payment_value
      t.float :paid_value

      t.timestamps null: false
    end
  end
end

