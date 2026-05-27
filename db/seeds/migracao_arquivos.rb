# Script de migração de arquivos do Paperclip para Active Storage (IAMA)
# Executar com: RAILS_ENV=production bundle exec rails runner db/seeds/migracao_arquivos.rb

puts "=" * 80
puts "Iniciando migração de arquivos (Paperclip -> Active Storage)..."
puts "=" * 80

# Função para gerar a partição do ID no formato do Paperclip (ex: 1234 -> "000/001/234")
def partition_path(id)
  sprintf("%09d", id).scan(/\d{3}/).join("/")
end

# Mapeamento dos anexos do modelo Map
attachments_to_migrate = [
  { name: :attachment_map,     folder: 'attachment_maps' },
  { name: :attachment_receipt, folder: 'attachment_receipts' },
  { name: :attachment_pay,     folder: 'attachment_pays' }
]

migrated_count = 0
not_found_count = 0
already_migrated_count = 0
errors_count = 0

Map.find_each do |map|
  attachments_to_migrate.each do |att|
    attachment_name = att[:name]
    folder_name = att[:folder]

    # Nome do arquivo legado na tabela do banco
    file_name_col = "#{attachment_name}_file_name"
    content_type_col = "#{attachment_name}_content_type"

    # Verifica se as colunas do Paperclip existem no banco
    next unless map.respond_to?(file_name_col)

    filename = map.read_attribute(file_name_col)
    content_type = map.read_attribute(content_type_col)

    next if filename.blank?

    # Se já estiver associado no Active Storage, pula
    if map.send(attachment_name).attached?
      already_migrated_count += 1
      next
    end

    # Caminho do arquivo legado gerado pelo Paperclip
    part = partition_path(map.id)
    legacy_path = Rails.root.join('public', 'system', 'maps', folder_name, part, 'original', filename)

    if File.exist?(legacy_path)
      begin
        # Abre o arquivo e anexa via Active Storage
        File.open(legacy_path) do |file|
          map.send(attachment_name).attach(
            io: file,
            filename: filename,
            content_type: content_type
          )
        end
        puts "✅ Sucesso: Map ##{map.id} - Anexo '#{attachment_name}' migrado (#{filename})"
        migrated_count += 1
      rescue => e
        puts "❌ Erro ao migrar Map ##{map.id} - Anexo '#{attachment_name}': #{e.message}"
        errors_count += 1
      end
    else
      # Tenta buscar na pasta legada global caso a estrutura de partição seja diferente ou direta
      alternative_path = Rails.root.join('public', 'system', 'maps', folder_name, map.id.to_s, 'original', filename)
      if File.exist?(alternative_path)
        begin
          File.open(alternative_path) do |file|
            map.send(attachment_name).attach(
              io: file,
              filename: filename,
              content_type: content_type
            )
          end
          puts "✅ Sucesso (Caminho alternativo): Map ##{map.id} - Anexo '#{attachment_name}' migrado (#{filename})"
          migrated_count += 1
        rescue => e
          puts "❌ Erro ao migrar Map ##{map.id} (Alt): #{e.message}"
          errors_count += 1
        end
      else
        puts "⚠️ Não encontrado no disco: Map ##{map.id} - #{attachment_name} (Esperado em: #{legacy_path})"
        not_found_count += 1
      end
    end
  end
end

puts "=" * 80
puts "Resumo da migração:"
puts "  - Migrados com sucesso: #{migrated_count}"
puts "  - Já estavam migrados:  #{already_migrated_count}"
puts "  - Arquivos não achados: #{not_found_count}"
puts "  - Erros encontrados:    #{errors_count}"
puts "=" * 80
