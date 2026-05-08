class CreateMaps < ActiveRecord::Migration[4.2]
  def change
    create_table :maps do |t|
      t.datetime :time_surgery
      t.belongs_to :hospital, index: true, foreign_key: true
      t.belongs_to :bedroom, index: true, foreign_key: true
      t.belongs_to :patient, index: true, foreign_key: true
      t.belongs_to :health_terminology, index: true, foreign_key: true
      t.belongs_to :surgeon, index: true, foreign_key: true
      t.belongs_to :anesthetist, index: true, foreign_key: true
      t.belongs_to :health_insurance, index: true, foreign_key: true
      t.belongs_to :receipt, index: true, foreign_key: true
      t.belongs_to :payment_method, index: true, foreign_key: true
      t.belongs_to :payment_recipient, index: true, foreign_key: true
      t.text :note

      t.timestamps null: false
    end
  end
end

