json.array!(@payment_recipients) do |payment_recipient|
  json.extract! payment_recipient, :id, :name
  json.url payment_recipient_url(payment_recipient, format: :json)
end
