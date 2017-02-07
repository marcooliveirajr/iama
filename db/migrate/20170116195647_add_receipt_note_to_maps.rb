class AddReceiptNoteToMaps < ActiveRecord::Migration
  def change
    add_column :maps, :receipt_note, :text
  end
end
