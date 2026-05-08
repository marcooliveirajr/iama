class AddAttachmentAttachmentMapToMaps < ActiveRecord::Migration[4.2]
def self.up
    change_table :maps do |t|
            t.string :attachment_map_file_name
      t.string :attachment_map_content_type
      t.integer :attachment_map_file_size
      t.datetime :attachment_map_updated_at

    end
  end

  def self.down
    remove_attachment :maps, :attachment_map
  end
end

