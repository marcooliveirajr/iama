json.array!(@bedrooms) do |bedroom|
  json.extract! bedroom, :id, :name
  json.url bedroom_url(bedroom, format: :json)
end
