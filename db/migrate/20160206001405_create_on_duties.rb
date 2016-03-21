class CreateOnDuties < ActiveRecord::Migration
  def change
    create_table :on_duties do |t|
      t.datetime :on_duty_date
      t.belongs_to :anesthetist, index: true, foreign_key: true
      t.text :note

      t.timestamps null: false
    end
  end
end
