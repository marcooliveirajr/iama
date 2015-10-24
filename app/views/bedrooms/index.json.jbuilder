json.array!(@bedrooms) do |bedroom|
  json.extract! bedroom, :id, :name, :hospitals_id
  json.url bedroom_url(bedroom, format: :json)
end
