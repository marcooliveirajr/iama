json.array!(@bedrooms) do |bedroom|
  json.extract! bedroom, :id, :name
end
