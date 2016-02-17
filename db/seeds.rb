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
end

puts 'Tests'
puts 'Creating Surgeon for test...'
Surgeon.find_or_create_by({:name => "André Lucas", :cpf => "71155072871", :phone => "159990987", :email => "teste@teste.com", :address => "Rua Portugues", :address_number => "1", :address_complement => "1", :district => "Simus", :city => "Sorocaba", :postal_code => "18440000", :state => "SP"})
Surgeon.find_or_create_by({:name => "Pakita", :cpf => "67770445230", :phone => "15987654", :email => "www@teste.com", :address => "Alamenda Portugues", :address_number => "2", :address_complement => "1", :district => "Tiete", :city => "Ita", :postal_code => "18440000", :state => "SP"})
Surgeon.find_or_create_by({:name => "Dé", :cpf => "40062472143", :phone => "1543678", :email => "qqqqq@teste.com", :address => "Avenida Ingles", :address_number => "3", :address_complement => "1", :district => "Flora", :city => "Itapopoca", :postal_code => "18440000", :state => "SP"})

puts 'Creating Anesthetists for test...'
Anesthetist.find_or_create_by({:name => "Markito", :cpf => "71155072871", :phone => "159987987", :email => "teste@teste.com", :address => "Rua de Teste", :address_number => "1", :address_complement => "1", :district => "Simus", :city => "Sorocaba", :postal_code => "18440000", :state => "SP"})
Anesthetist.find_or_create_by({:name => "José", :cpf => "67770445230", :phone => "1598854", :email => "www@teste.com", :address => "Alamenda das Angelicas", :address_number => "2", :address_complement => "1", :district => "Tiete", :city => "Ita", :postal_code => "18440000", :state => "SP"})
Anesthetist.find_or_create_by({:name => "Vicentino", :cpf => "40062472143", :phone => "15434678", :email => "qqqqq@teste.com", :address => "Avenida General", :address_number => "3", :address_complement => "1", :district => "Flora", :city => "Itapopoca", :postal_code => "18440000", :state => "SP"})

puts 'Creating Patients for test...'
Patient.find_or_create_by({:name => "Americo", :cpf => "71155072871", :phone => "15998987", :email => "teste@teste.com", :address => "Rua 7 de setembro", :address_number => "1", :address_complement => "1", :district => "Simus", :city => "Sorocaba", :postal_code => "18440000", :state => "SP"})
Patient.find_or_create_by({:name => "Jonatam", :cpf => "67770445230", :phone => "1598854", :email => "www@teste.com", :address => "Alamenda das Angelicas", :address_number => "2", :address_complement => "1", :district => "Tiete", :city => "Ita", :postal_code => "18440000", :state => "SP"})
Patient.find_or_create_by({:name => "Astrolabio", :cpf => "40062472143", :phone => "15432678", :email => "qqqqq@teste.com", :address => "Avenida Padrão", :address_number => "3", :address_complement => "1", :district => "Flora", :city => "Itapopoca", :postal_code => "18440000", :state => "SP"})

puts 'Creating Hospitals for test...'
Hospital.find_or_create_by({:name => "Hospital Santa Casa", :kind => "tipo 1", :status => true})
Hospital.find_or_create_by({:name => "Hospital Unimed", :kind => "tipo 1", :status => false})
Hospital.find_or_create_by({:name => "Hospital Modelo", :kind => "tipo 2", :status => true})

puts 'Creating Bedroons for test...'
Bedroom.find_or_create_by({:name => "Quarto 1", :hospital_id => 1})
Bedroom.find_or_create_by({:name => "Quarto 2", :hospital_id => 1})
Bedroom.find_or_create_by({:name => "Quarto 3", :hospital_id => 1})
Bedroom.find_or_create_by({:name => "Quarto Unimed 1", :hospital_id => 2})
Bedroom.find_or_create_by({:name => "Quarto Unimed 2", :hospital_id => 2})
Bedroom.find_or_create_by({:name => "Quarto Unimed 3", :hospital_id => 2})
Bedroom.find_or_create_by({:name => "Quarto Modelo 1", :hospital_id => 3})
Bedroom.find_or_create_by({:name => "Quarto Modelo 2", :hospital_id => 3})
Bedroom.find_or_create_by({:name => "Quarto Modelo 3", :hospital_id => 3})

puts 'Creating Size Surgery for test...'
SizeSurgery.find_or_create_by({:health_insurance_id => 1, :measure => 1, :value_measure => 10})
SizeSurgery.find_or_create_by({:health_insurance_id => 1, :measure => 2, :value_measure => 20})
SizeSurgery.find_or_create_by({:health_insurance_id => 1, :measure => 3, :value_measure => 30})
SizeSurgery.find_or_create_by({:health_insurance_id => 1, :measure => 4, :value_measure => 30})
SizeSurgery.find_or_create_by({:health_insurance_id => 2, :measure => 1, :value_measure => 10})
SizeSurgery.find_or_create_by({:health_insurance_id => 2, :measure => 2, :value_measure => 20})
SizeSurgery.find_or_create_by({:health_insurance_id => 2, :measure => 3, :value_measure => 30})
SizeSurgery.find_or_create_by({:health_insurance_id => 2, :measure => 4, :value_measure => 30})
SizeSurgery.find_or_create_by({:health_insurance_id => 3, :measure => 1, :value_measure => 10})
SizeSurgery.find_or_create_by({:health_insurance_id => 3, :measure => 2, :value_measure => 20})
SizeSurgery.find_or_create_by({:health_insurance_id => 3, :measure => 3, :value_measure => 30})
SizeSurgery.find_or_create_by({:health_insurance_id => 3, :measure => 4, :value_measure => 30})

puts 'Creating Version for test...'
Version.find_or_create_by({:name => "Tabela Santa Casa"})
Version.find_or_create_by({:name => "Tabela Unimed"})
Version.find_or_create_by({:name => "Tabela Modelo"})

puts 'Creating Health insureces for test...'
HealthInsurance.find_or_create_by({:name => "Unimed", :kind => "tipo 1", :status => true, :version_id => 1})
HealthInsurance.find_or_create_by({:name => "Plus", :kind => "tipo 1", :status => false, :version_id => 2})
HealthInsurance.find_or_create_by({:name => "Maritima", :kind => "tipo 2", :status => true, :version_id => 3})

puts 'Creating Health Terminologies for test...'
HealthTerminology.find_or_create_by({:code_tuss => 20102011, :description_tuss => "Holter De 24 Horas - 2 Ou Mais Canais - Analógico", :category_tuss => "Procedimentos Clínicos", :measure => 1, :version_id => 1 })
HealthTerminology.find_or_create_by({:code_tuss => 20102038, :description_tuss => "Monitorização Ambulatorial Da Pressão Arterial - Mapa (24 Horas)", :category_tuss => "Procedimentos Clínicos", :measure => 1, :version_id => 2})
HealthTerminology.find_or_create_by({:code_tuss => 20102070, :description_tuss => "Tilt Teste", :category_tuss => "Procedimentos Clínicos", :measure => 2, :version_id => 1})
HealthTerminology.find_or_create_by({:code_tuss => 20102089, :description_tuss => "Sistema Holter - 12 Horas - 1 Canal", :category_tuss => "Procedimentos Clínicos", :measure => 2, :version_id => 3})
HealthTerminology.find_or_create_by({:code_tuss => 20103018, :description_tuss => "Adaptação E Treinamento De Recursos Ópticos Para Visão Subnormal (Por Sessão) -", :category_tuss => "Procedimentos Clínicos", :measure => 1, :version_id => 1})
HealthTerminology.find_or_create_by({:code_tuss => 20103026, :description_tuss => "Amputação Bilateral (Preparação Do Coto)", :category_tuss => "Procedimentos Clínicos", :measure => 3, :version_id => 1})
HealthTerminology.find_or_create_by({:code_tuss => 20103034, :description_tuss => "Amputação Bilateral (Treinamento Protético)", :category_tuss => "Procedimentos Clínicos", :measure => 3, :version_id => 1})
HealthTerminology.find_or_create_by({:code_tuss => 20103042, :description_tuss => "Amputação Unilateral (Preparação Do Coto)", :category_tuss => "Procedimentos Clínicos", :measure => 4, :version_id => 1})
HealthTerminology.find_or_create_by({:code_tuss => 20103050, :description_tuss => "Amputação Unilateral (Treinamento Protético)", :category_tuss => "Procedimentos Clínicos", :measure => 1, :version_id => 3})
HealthTerminology.find_or_create_by({:code_tuss => 20103069, :description_tuss => "Assistência Fisiátrica Respiratória Em Pré E Pós-Operatório De Condições Cirúrgicas", :category_tuss => "Procedimentos Clínicos", :measure => 2, :version_id => 1})
HealthTerminology.find_or_create_by({:code_tuss => 20103077, :description_tuss => "Ataxias", :category_tuss => "Procedimentos Clínicos", :measure => 4, :version_id => 1})
HealthTerminology.find_or_create_by({:code_tuss => 20103093, :description_tuss => "Atendimento Fisiátrico No Pré E Pós-Operatório De Pacientes Para Prevenção De", :category_tuss => "Procedimentos Clínicos", :measure => 2, :version_id => 1})
HealthTerminology.find_or_create_by({:code_tuss => 20103107, :description_tuss => "Atendimento Fisiátrico No Pré E Pós-Parto", :category_tuss => "Procedimentos Clínicos", :measure => 1, :version_id => 1})
HealthTerminology.find_or_create_by({:code_tuss => 20103115, :description_tuss => "Atividade Reflexa Ou Aplicação De Técnica Cinesioterápica Específica", :category_tuss => "Procedimentos Clínicos", :measure => 4, :version_id => 1})
HealthTerminology.find_or_create_by({:code_tuss => 20103131, :description_tuss => "Biofeedback Com Emg", :category_tuss => "Procedimentos Clínicos", :measure => 4, :version_id => 1})
HealthTerminology.find_or_create_by({:code_tuss => 20103140, :description_tuss => "Bloqueio Fenólico, Alcoólico Ou Com Toxina Botulínica (De Pontos Motores) - Por Membro", :category_tuss => "Procedimentos Clínicos", :measure => 3, :version_id => 1})
HealthTerminology.find_or_create_by({:code_tuss => 20103182, :description_tuss => "Desvios Posturais Da Coluna Vertebral", :category_tuss => "Procedimentos Clínicos", :measure => 3, :version_id => 1})
