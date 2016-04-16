class CreatePaymentRecipients < ActiveRecord::Migration
  def change
    create_table :payment_recipients do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
