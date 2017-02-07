class AddFreeTextToMaps < ActiveRecord::Migration
  def change
    add_column :maps, :free_text, :text
  end
end
