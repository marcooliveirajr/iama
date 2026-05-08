class AddPlanToMaps < ActiveRecord::Migration[4.2]
  def change
    add_column :maps, :plan, :string
  end
end

