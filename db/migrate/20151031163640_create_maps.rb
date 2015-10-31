class CreateMaps < ActiveRecord::Migration
  def change
    create_table :maps do |t|
      t.datetime :time_surgery
      t.references :hospital, index: true, foreign_key: true
      t.references :bedroom, index: true, foreign_key: true
      t.references :patient, index: true, foreign_key: true
      t.references :health_terminology, index: true, foreign_key: true
      t.references :surgeon, index: true, foreign_key: true
      t.references :anesthetist, index: true, foreign_key: true
      t.references :health_insurance, index: true, foreign_key: true
      t.text :note

      t.timestamps null: false
    end
  end
end
