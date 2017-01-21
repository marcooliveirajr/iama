json.array!(@outputs) do |output|
  json.extract! output, :id, :name, :category_id
  json.url output_url(output, format: :json)
end
