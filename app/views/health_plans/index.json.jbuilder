json.array!(@health_plans) do |health_plan|
  json.extract! health_plan, :id, :name, :kind, :status
  json.url health_plan_url(health_plan, format: :json)
end
