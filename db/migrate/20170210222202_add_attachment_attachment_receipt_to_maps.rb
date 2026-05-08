class AddAttachmentAttachmentReceiptToMaps < ActiveRecord::Migration[4.2]
def self.up
    change_table :maps do |t|
            t.string :attachment_receipt_file_name
      t.string :attachment_receipt_content_type
      t.integer :attachment_receipt_file_size
      t.datetime :attachment_receipt_updated_at

    end
  end

  def self.down
    remove_attachment :maps, :attachment_receipt
  end
end

