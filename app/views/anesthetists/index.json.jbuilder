json.array!(@anesthetists) do |anesthetist|
  json.extract! anesthetist, :id, :name, :cpf, :phone, :email, :address, :address_number, :address_complement, :district, :city, :postal_code, :state
  json.url anesthetist_url(anesthetist, format: :json)
end
