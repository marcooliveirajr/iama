json.array!(@receipts) do |receipt|
  json.extract! receipt, :id, :name
  json.url receipt_url(receipt, format: :json)
end
