# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts 'Creating Role...'
['registered', 'moderator', 'admin'].each do |role|
  Role.find_or_create_by({name: role})
end

puts 'Creating User Admin...'
User.create! :name => "admin", :email => "admin@admin.com", :password => "inicial1234", :role_id => 3

puts 'Tests'
puts 'Creating Surgeon for test...'
Surgeon.find_or_create_by({:name => "André Lucas", :cpf => "71155072871", :phone => "159990987", :email => "teste@teste.com", :address => "Rua Portugues", :address_number => "1", :address_complement => "1", :district => "Simus", :city => "Sorocaba", :postal_code => "18440000", :state => "SP"})
Surgeon.find_or_create_by({:name => "Pakita", :cpf => "67770445230", :phone => "15987654", :email => "www@teste", :address => "Alamenda Portugues", :address_number => "2", :address_complement => "1", :district => "Tiete", :city => "Ita", :postal_code => "18440000", :state => "SP"})
Surgeon.find_or_create_by({:name => "Dé", :cpf => "40062472143", :phone => "1543678", :email => "qqqqq@teste", :address => "Avenida Ingles", :address_number => "3", :address_complement => "1", :district => "Flora", :city => "Itapopoca", :postal_code => "18440000", :state => "SP"})

puts 'Creating Anesthetists for test...'
Anesthetist.find_or_create_by({:name => "Markito", :cpf => "71155072871", :phone => "159987987", :email => "teste@teste.com", :address => "Rua de Teste", :address_number => "1", :address_complement => "1", :district => "Simus", :city => "Sorocaba", :postal_code => "18440000", :state => "SP"})
Anesthetist.find_or_create_by({:name => "José", :cpf => "67770445230", :phone => "1598854", :email => "www@teste", :address => "Alamenda das Angelicas", :address_number => "2", :address_complement => "1", :district => "Tiete", :city => "Ita", :postal_code => "18440000", :state => "SP"})
Anesthetist.find_or_create_by({:name => "Vicentino", :cpf => "40062472143", :phone => "15434678", :email => "qqqqq@teste", :address => "Avenida General", :address_number => "3", :address_complement => "1", :district => "Flora", :city => "Itapopoca", :postal_code => "18440000", :state => "SP"})

puts 'Creating Patients for test...'
Patient.find_or_create_by({:name => "Paciente 1", :cpf => "71155072871", :phone => "15998987", :email => "teste@teste.com", :address => "Rua 7 de setembro", :address_number => "1", :address_complement => "1", :district => "Simus", :city => "Sorocaba", :postal_code => "18440000", :state => "SP"})
Patient.find_or_create_by({:name => "Paciente 2", :cpf => "67770445230", :phone => "1598854", :email => "www@teste", :address => "Alamenda das Angelicas", :address_number => "2", :address_complement => "1", :district => "Tiete", :city => "Ita", :postal_code => "18440000", :state => "SP"})
Patient.find_or_create_by({:name => "Paciente 3", :cpf => "40062472143", :phone => "15432678", :email => "qqqqq@teste", :address => "Avenida Padrão", :address_number => "3", :address_complement => "1", :district => "Flora", :city => "Itapopoca", :postal_code => "18440000", :state => "SP"})

puts 'Creating Hospitals for test...'
Hospital.find_or_create_by({:name => "Hospital Santa Casa", :kind => "tipo 1", :status => true})
Hospital.find_or_create_by({:name => "Hospital Unimed", :kind => "tipo 1", :status => false})
Hospital.find_or_create_by({:name => "Hospital Modelo", :kind => "tipo 2", :status => true})

puts 'Creating Bedroons for test...'
Bedroom.find_or_create_by({:name => "Quarto 1", :hospital_id => 1})
Bedroom.find_or_create_by({:name => "Quarto 2", :hospital_id => 1})
Bedroom.find_or_create_by({:name => "Quarto 3", :hospital_id => 1})
Bedroom.find_or_create_by({:name => "Quarto 1", :hospital_id => 2})
Bedroom.find_or_create_by({:name => "Quarto 2", :hospital_id => 2})
Bedroom.find_or_create_by({:name => "Quarto 3", :hospital_id => 2})
Bedroom.find_or_create_by({:name => "Quarto 1", :hospital_id => 3})
Bedroom.find_or_create_by({:name => "Quarto 2", :hospital_id => 3})
Bedroom.find_or_create_by({:name => "Quarto 3", :hospital_id => 3})

puts 'Creating Health insureces for test...'
HealthInsurance.find_or_create_by({:name => "Unimed", :kind => "tipo 1", :status => true})
HealthInsurance.find_or_create_by({:name => "Teste", :kind => "tipo 1", :status => false})
HealthInsurance.find_or_create_by({:name => "Maritima", :kind => "tipo 2", :status => true})

puts 'Creating Size Surgery for test...'
SizeSurgery.find_or_create_by({:health_insurance_id => 1, :size => 1, :value => 10})
SizeSurgery.find_or_create_by({:health_insurance_id => 1, :size => 2, :value => 20})
SizeSurgery.find_or_create_by({:health_insurance_id => 1, :size => 3, :value => 30})
SizeSurgery.find_or_create_by({:health_insurance_id => 2, :size => 1, :value => 10})
SizeSurgery.find_or_create_by({:health_insurance_id => 2, :size => 2, :value => 20})
SizeSurgery.find_or_create_by({:health_insurance_id => 2, :size => 3, :value => 30})
SizeSurgery.find_or_create_by({:health_insurance_id => 3, :size => 1, :value => 10})
SizeSurgery.find_or_create_by({:health_insurance_id => 3, :size => 2, :value => 20})
SizeSurgery.find_or_create_by({:health_insurance_id => 3, :size => 3, :value => 30})

puts 'Creating Health Terminologies for test...'
HealthTerminology.find_or_create_by({:code_tuss => 9223372036854775807,
									 :description_tuss => "Procedimento 1",
									 :category_tuss => "Categoria 1",
									 :size => 1,
									 :version => 100})
HealthTerminology.find_or_create_by({:code_tuss => 9223377516854775807,
									 :description_tuss => "Procedimento 2",
									 :category_tuss => "Categoria 2",
									 :size => 1,
									 :version => 100})
HealthTerminology.find_or_create_by({:code_tuss => 9223372036874521807,
									 :description_tuss => "Procedimento 3",
									 :category_tuss => "Categoria 2",
									 :size => 1,
									 :version => 100})

