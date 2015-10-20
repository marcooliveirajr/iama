json.array!(@surgeons) do |surgeon|
  json.extract! surgeon, :id, :name, :cpf, :phone, :email, :address, :address_number, :address_complement, :district, :city, :postal_code, :state
  json.url surgeon_url(surgeon, format: :json)
end
