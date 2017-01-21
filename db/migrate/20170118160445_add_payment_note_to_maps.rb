class AddPaymentNoteToMaps < ActiveRecord::Migration
  def change
    add_column :maps, :payment_note, :text
  end
end
