# Script de criação/atualização de usuários do sistema IAMA
# Executar com: RAILS_ENV=production bundle exec rails runner db/seeds/usuarios_iama.rb

SENHA_PADRAO = 'mudar@123'

usuarios = [
  { name: 'Luciana Sobral Costa',           email: 'lucy_sobral@yahoo.com.br',            role: 'registered' },
  { name: 'Caio Alexandre de Souza Poca Pereira', email: 'caio_poca@yahoo.com.br',        role: 'registered' },
  { name: 'Raul Sizuo Habu',                email: 'habu@uol.com',                         role: 'registered' },
  { name: 'Adriana Amélia Devicchi',         email: 'adevicchi@gmail.com',                  role: 'registered' },
  { name: 'Isadora Loureiro',               email: 'isadora.loureiro@gmail.com',            role: 'registered' },
  { name: 'Hiromi Tengan',                  email: 'hiromitengan@uol.com.br',               role: 'registered' },
  { name: 'Vera Sobral',                    email: 'veralu_sobral@yahoo.com.br',            role: 'registered' },
  { name: 'Marco Oliveira',                 email: 'marco.oliveira.mconsulting@gmail.com',  role: 'admin'      },
]

role_admin     = Role.find_by(name: 'admin')     || Role.first
role_registrado = Role.find_by(name: 'registered') || Role.first

puts "=" * 60
puts "Iniciando criação/atualização de usuários..."
puts "=" * 60

usuarios.each do |dados|
  role = dados[:role] == 'admin' ? role_admin : role_registrado
  user = User.find_or_initialize_by(email: dados[:email])

  if user.new_record?
    user.name     = dados[:name]
    user.role     = role
    user.password = SENHA_PADRAO
    user.password_confirmation = SENHA_PADRAO
    if user.save
      puts "✅ CRIADO:     #{dados[:name]} <#{dados[:email]}>"
    else
      puts "❌ ERRO ao criar #{dados[:email]}: #{user.errors.full_messages.join(', ')}"
    end
  else
    user.name     = dados[:name]
    user.role     = role
    user.password = SENHA_PADRAO
    user.password_confirmation = SENHA_PADRAO
    if user.save
      puts "🔄 ATUALIZADO: #{dados[:name]} <#{dados[:email]}>"
    else
      puts "❌ ERRO ao atualizar #{dados[:email]}: #{user.errors.full_messages.join(', ')}"
    end
  end
end

puts "=" * 60
puts "Concluído! Total: #{usuarios.size} usuários processados."
puts "Senha de todos: #{SENHA_PADRAO}"
puts "=" * 60
