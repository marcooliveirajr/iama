class CreateBedrooms < ActiveRecord::Migration
  def change
    create_table :bedrooms do |t|
      t.string :name
      t.belongs_to :hospital, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
