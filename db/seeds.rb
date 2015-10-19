# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts ''

puts 'Creating Surgeon for test...'
Surgeon.create! :name => "André Lucas", :cpf => "2131231", :phone => "1212121", :email => "sfsdf@teste", :address => "Portugues", :address_number => "1", :address_complement => "1", :district => "Simus", :city => "Sorocaba", :postal_code => "23232", :state => "SP"
Surgeon.create! :name => "Pakita", :cpf => "4565465", :phone => "345354354", :email => "sfsdf@teste", :address => "Portugues", :address_number => "2", :address_complement => "1", :district => "Tiete", :city => "Ita", :postal_code => "323232", :state => "SP"
Surgeon.create! :name => "Dé", :cpf => "23432434", :phone => "567786787", :email => "sfsdf@teste", :address => "Ingles", :address_number => "3", :address_complement => "1", :district => "Flora", :city => "Itapopoca", :postal_code => "323232", :state => "SP"
