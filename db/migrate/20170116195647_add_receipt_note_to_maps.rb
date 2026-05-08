class AddReceiptNoteToMaps < ActiveRecord::Migration[4.2]
  def change
    add_column :maps, :receipt_note, :text
  end
end

