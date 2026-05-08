class CreateVersions < ActiveRecord::Migration[4.2]
  def change
    create_table :versions do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end

