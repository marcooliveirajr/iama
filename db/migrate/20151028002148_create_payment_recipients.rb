class CreatePaymentRecipients < ActiveRecord::Migration[4.2]
  def change
    create_table :payment_recipients do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end

