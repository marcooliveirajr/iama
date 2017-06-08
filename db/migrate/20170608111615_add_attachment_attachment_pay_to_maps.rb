class AddAttachmentAttachmentPayToMaps < ActiveRecord::Migration
  def self.up
    change_table :maps do |t|
      t.attachment :attachment_pay
    end
  end

  def self.down
    remove_attachment :maps, :attachment_pay
  end
end
