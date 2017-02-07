class AddPlanRefToMaps < ActiveRecord::Migration
  def change
    add_reference :maps, :health_plan, index: true, foreign_key: true
  end
end
