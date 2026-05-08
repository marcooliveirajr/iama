class AddPaymentNoteToMaps < ActiveRecord::Migration[4.2]
  def change
    add_column :maps, :payment_note, :text
  end
end

