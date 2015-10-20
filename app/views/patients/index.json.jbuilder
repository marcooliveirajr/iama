json.array!(@patients) do |patient|
  json.extract! patient, :id, :name, :cpf, :phone, :email, :address, :address_number, :address_complement, :district, :city, :postal_code, :state
  json.url patient_url(patient, format: :json)
end
