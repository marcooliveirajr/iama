class AddPlanRefToMaps < ActiveRecord::Migration[4.2]
  def change
    add_reference :maps, :health_plan, index: true, foreign_key: true
  end
end

