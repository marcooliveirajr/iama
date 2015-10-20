json.array!(@hospitals) do |hospital|
  json.extract! hospital, :id, :name, :type, :status
  json.url hospital_url(hospital, format: :json)
end
