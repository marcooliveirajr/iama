class AddAttachmentAttachmentPayToMaps < ActiveRecord::Migration[4.2]
def self.up
    change_table :maps do |t|
            t.string :attachment_pay_file_name
      t.string :attachment_pay_content_type
      t.integer :attachment_pay_file_size
      t.datetime :attachment_pay_updated_at

    end
  end

  def self.down
    remove_attachment :maps, :attachment_pay
  end
end

