# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts ''

puts 'Creating User Admin...'
User.create! :name => "admin", :email => "admin@admin.com", :password => "inicial1234"

puts 'Creating Surgeon for test...'
Surgeon.create! :name => "André Lucas", :cpf => "71155072871", :phone => "159990987", :email => "teste@teste.com", :address => "Rua Portugues", :address_number => "1", :address_complement => "1", :district => "Simus", :city => "Sorocaba", :postal_code => "18440000", :state => "SP"
Surgeon.create! :name => "Pakita", :cpf => "67770445230", :phone => "15987654", :email => "www@teste", :address => "Alamenda Portugues", :address_number => "2", :address_complement => "1", :district => "Tiete", :city => "Ita", :postal_code => "18440000", :state => "SP"
Surgeon.create! :name => "Dé", :cpf => "40062472143", :phone => "1543678", :email => "qqqqq@teste", :address => "Avenida Ingles", :address_number => "3", :address_complement => "1", :district => "Flora", :city => "Itapopoca", :postal_code => "18440000", :state => "SP"

puts 'Creating Anesthetists for test...'
Anesthetist.create! :name => "Markito", :cpf => "71155072871", :phone => "159987987", :email => "teste@teste.com", :address => "Rua de Teste", :address_number => "1", :address_complement => "1", :district => "Simus", :city => "Sorocaba", :postal_code => "18440000", :state => "SP"
Anesthetist.create! :name => "José", :cpf => "67770445230", :phone => "1598854", :email => "www@teste", :address => "Alamenda das Angelicas", :address_number => "2", :address_complement => "1", :district => "Tiete", :city => "Ita", :postal_code => "18440000", :state => "SP"
Anesthetist.create! :name => "Vicentino", :cpf => "40062472143", :phone => "15434678", :email => "qqqqq@teste", :address => "Avenida General", :address_number => "3", :address_complement => "1", :district => "Flora", :city => "Itapopoca", :postal_code => "18440000", :state => "SP"

puts 'Creating Patients for test...'
Patient.create! :name => "Paciente 1", :cpf => "71155072871", :phone => "15998987", :email => "teste@teste.com", :address => "Rua 7 de setembro", :address_number => "1", :address_complement => "1", :district => "Simus", :city => "Sorocaba", :postal_code => "18440000", :state => "SP"
Patient.create! :name => "Paciente 2", :cpf => "67770445230", :phone => "1598854", :email => "www@teste", :address => "Alamenda das Angelicas", :address_number => "2", :address_complement => "1", :district => "Tiete", :city => "Ita", :postal_code => "18440000", :state => "SP"
Patient.create! :name => "Paciente 3", :cpf => "40062472143", :phone => "15432678", :email => "qqqqq@teste", :address => "Avenida Padrão", :address_number => "3", :address_complement => "1", :district => "Flora", :city => "Itapopoca", :postal_code => "18440000", :state => "SP"

puts 'Creating Hospitals for test...'
Hospital.create! :name => "Hospital Santa Casa", :kind => "tipo 1", :status => true
Hospital.create! :name => "Hospital Unimed", :kind => "tipo 1", :status => false
Hospital.create! :name => "Hospital Modelo", :kind => "tipo 2", :status => true

puts 'Creating Bedroons for test...'
Bedroom.create! :name => "Quarto 1", :hospital_id => 1
Bedroom.create! :name => "Quarto 2", :hospital_id => 1
Bedroom.create! :name => "Quarto 3", :hospital_id => 1
Bedroom.create! :name => "Quarto 1", :hospital_id => 2
Bedroom.create! :name => "Quarto 2", :hospital_id => 2
Bedroom.create! :name => "Quarto 3", :hospital_id => 2
Bedroom.create! :name => "Quarto 1", :hospital_id => 3
Bedroom.create! :name => "Quarto 2", :hospital_id => 3
Bedroom.create! :name => "Quarto 3", :hospital_id => 3

puts 'Creating Health insureces for test...'
HealthInsurance.create! :name => "Unimed", :kind => "tipo 1", :status => true
HealthInsurance.create! :name => "Teste", :kind => "tipo 1", :status => false
HealthInsurance.create! :name => "Maritima", :kind => "tipo 2", :status => true
