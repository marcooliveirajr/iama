# Script para limpar todos os dados do banco de dados IAMA
# EXCETO a tabela users_old (e tabelas de controle do Rails)
# 
# Executar com: RAILS_ENV=production bundle exec rails runner db/seeds/limpar_banco.rb

TABELAS_PROTEGIDAS = %w[
  users_old
  schema_migrations
  ar_internal_metadata
].freeze

puts "=" * 70
puts "LIMPEZA DO BANCO DE DADOS IAMA"
puts "Tabelas protegidas (NÃO serão limpas): #{TABELAS_PROTEGIDAS.join(', ')}"
puts "=" * 70
puts ""

# Busca todas as tabelas do banco
conexao = ActiveRecord::Base.connection
todas_tabelas = conexao.tables

tabelas_para_limpar = todas_tabelas - TABELAS_PROTEGIDAS

puts "Tabelas que serão limpas (#{tabelas_para_limpar.count} no total):"
tabelas_para_limpar.each { |t| puts "  - #{t}" }
puts ""
puts "Tabelas protegidas que serão mantidas:"
(todas_tabelas & TABELAS_PROTEGIDAS).each { |t| puts "  ✅ #{t}" }
puts ""

print "Deseja prosseguir? Digite SIM para confirmar: "
confirmacao = STDIN.gets.strip.upcase

unless confirmacao == "SIM"
  puts "Operação cancelada."
  exit
end

puts ""
puts "Iniciando limpeza..."
puts "-" * 70

# Desabilita verificações de chave estrangeira para limpar na ordem correta
conexao.execute("SET FOREIGN_KEY_CHECKS = 0")

erros = 0
tabelas_para_limpar.each do |tabela|
  begin
    count_antes = conexao.execute("SELECT COUNT(*) as c FROM `#{tabela}`").first[0]
    conexao.execute("TRUNCATE TABLE `#{tabela}`")
    puts "✅ #{tabela.ljust(40)} #{count_antes} registros removidos"
  rescue => e
    puts "❌ #{tabela.ljust(40)} ERRO: #{e.message}"
    erros += 1
  end
end

# Reabilita verificações de chave estrangeira
conexao.execute("SET FOREIGN_KEY_CHECKS = 1")

puts "-" * 70
puts ""
puts "Limpeza concluída!"
puts "  - #{tabelas_para_limpar.count - erros} tabelas limpas com sucesso"
puts "  - #{erros} erros encontrados" if erros > 0
puts ""
puts "Tabelas protegidas preservadas:"
(todas_tabelas & TABELAS_PROTEGIDAS).each do |t|
  count = conexao.execute("SELECT COUNT(*) as c FROM `#{t}`").first[0]
  puts "  ✅ #{t}: #{count} registros mantidos"
end
puts "=" * 70
