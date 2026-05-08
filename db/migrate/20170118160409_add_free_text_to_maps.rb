class AddFreeTextToMaps < ActiveRecord::Migration[4.2]
  def change
    add_column :maps, :free_text, :text
  end
end

