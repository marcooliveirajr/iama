json.array!(@size_surgeries) do |size_surgery|
  json.extract! size_surgery, :id, :health_insurance_id, :size, :value
  json.url size_surgery_url(size_surgery, format: :json)
end
