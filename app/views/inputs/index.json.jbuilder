json.array!(@inputs) do |input|
  json.extract! input, :id, :name, :category_id
  json.url input_url(input, format: :json)
end
