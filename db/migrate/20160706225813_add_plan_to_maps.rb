class AddPlanToMaps < ActiveRecord::Migration
  def change
    add_column :maps, :plan, :string
  end
end
