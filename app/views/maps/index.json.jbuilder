json.array!(@maps) do |map|
  json.extract! map, :id, :time_surgery, :hospital_id, :bedroom_id, :patient_id, :health_terminology_id, :surgeon_id, :anesthetist_id, :health_insurance_id, :note
  json.url map_url(map, format: :json)
end
