class CreateHealthPlans < ActiveRecord::Migration[4.2]
  def change
    create_table :health_plans do |t|
      t.string :name
      t.string :kind
      t.boolean :status

      t.timestamps null: false
    end
  end
end

