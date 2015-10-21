json.array!(@hospitals) do |hospital|
  json.extract! hospital, :id, :name, :kind, :status
  json.url hospital_url(hospital, format: :json)
end
