class AddAttachmentAttachmentReceiptToMaps < ActiveRecord::Migration
  def self.up
    change_table :maps do |t|
      t.attachment :attachment_receipt
    end
  end

  def self.down
    remove_attachment :maps, :attachment_receipt
  end
end
