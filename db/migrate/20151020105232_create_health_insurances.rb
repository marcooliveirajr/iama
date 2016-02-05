class CreateHealthInsurances < ActiveRecord::Migration
  def change
    create_table :health_insurances do |t|
      t.string :name
      t.string :kind
      t.boolean :status
      t.belongs_to :version, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
