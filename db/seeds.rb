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

begin
  User.find(1)
rescue => RecordNotFound
  puts 'Creating User Admin...'
  User.create! :name => "admin", :email => "admin@admin.com", :password => "inicial1234", :role_id => 3
  User.create! :name => "Hiromi Tengan", :email => "hiromi@uol.com.br", :password => "mudar1234", :role_id => 3
  User.create! :name => "Raul Sizuo Habu", :email => "raul@clinicaiama.com.br", :password => "mudar1234", :role_id => 1
  User.create! :name => "Adriana Devicchi", :email => "adriana@clinicaiama.com.br", :password => "mudar1234", :role_id => 1
  User.create! :name => "Cibelle Nunes de Arruda", :email => "cibelle@clinicaiama.com.br", :password => "mudar1234", :role_id => 1
  User.create! :name => "Luciana Sobral", :email => "luciana@clinicaiama.com.br", :password => "mudar1234", :role_id => 1
  User.create! :name => "Sonia Dolcinotti", :email => "sonia@clinicaiama.com.br", :password => "mudar1234", :role_id => 1
  User.create! :name => "Marli da Silva", :email => "marli@clinicaiama.com.br", :password => "mudar1234", :role_id => 1
end

puts 'Creating Anesthetists...'
Anesthetist.find_or_create_by({:name => "Hiromi Tengan", :cpf => "", :phone => "", :email => "", :address => "", :address_number => "", :address_complement => "", :district => "", :city => "", :postal_code => "", :state => ""})
Anesthetist.find_or_create_by({:name => "Raul Sizuo Habu", :cpf => "", :phone => "", :email => "", :address => "", :address_number => "", :address_complement => "", :district => "", :city => "", :postal_code => "", :state => ""})
Anesthetist.find_or_create_by({:name => "Adriana Devicchi", :cpf => "", :phone => "", :email => "", :address => "", :address_number => "", :address_complement => "", :district => "", :city => "", :postal_code => "", :state => ""})
Anesthetist.find_or_create_by({:name => "Cibelle Nunes de Arruda", :cpf => "", :phone => "", :email => "", :address => "", :address_number => "", :address_complement => "", :district => "", :city => "", :postal_code => "", :state => ""})
Anesthetist.find_or_create_by({:name => "Luciana Sobral", :cpf => "", :phone => "", :email => "", :address => "", :address_number => "", :address_complement => "", :district => "", :city => "", :postal_code => "", :state => ""})

puts 'Creating Receipt...'
Receipt.find_or_create_by({:name => "Clínica IAMA"})
Receipt.find_or_create_by({:name => "Hiromi Tengan"})
Receipt.find_or_create_by({:name => "Raul Sizuo Habu"})
Receipt.find_or_create_by({:name => "Adriana Devicchi"})
Receipt.find_or_create_by({:name => "Cibelle Nunes de Arruda"})

puts 'Creating Bedroons...'
Bedroom.find_or_create_by({:name => "Enfermaria"})
Bedroom.find_or_create_by({:name => "Apartamento"})

puts 'Creating Version...'
Version.find_or_create_by({:name => "Tabela TUSS CABESP"})

puts 'Creating PaymentMethod...'
PaymentMethod.find_or_create_by({:name => "Dinheiro"})
PaymentMethod.find_or_create_by({:name => "Cheque"})
PaymentMethod.find_or_create_by({:name => "Depósito"})

puts 'Creating PaymentRecipient...'
PaymentRecipient.find_or_create_by({:name => "Hiromi Tengan"})
PaymentRecipient.find_or_create_by({:name => "Raul Sizuo Habu"})
PaymentRecipient.find_or_create_by({:name => "Adriana Devicchi"})
PaymentRecipient.find_or_create_by({:name => "Cibelle Nunes de Arruda"})

puts 'Creating Health insurances...'
HealthInsurance.find_or_create_by({:name => "Particular", :kind => "", :status => true, :version_id => 1})
