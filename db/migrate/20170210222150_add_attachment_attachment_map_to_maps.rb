class AddAttachmentAttachmentMapToMaps < ActiveRecord::Migration
  def self.up
    change_table :maps do |t|
      t.attachment :attachment_map
    end
  end

  def self.down
    remove_attachment :maps, :attachment_map
  end
end
