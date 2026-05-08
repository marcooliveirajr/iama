namespace :paperclip do
  desc "Migra anexos do Paperclip para Active Storage"
  task migrate: :environment do
    models = [Map]
    
    models.each do |model|
      puts "Migrando #{model.name}..."
      
      attachments = model.column_names.select { |c| c.end_with?("_file_name") }.map { |c| c.sub("_file_name", "") }
      
      model.find_each do |instance|
        attachments.each do |attachment|
          file_name = instance.send("#{attachment}_file_name")
          next if file_name.blank?
          
          # Paperclip default partition: id.to_s.scan(/.{3}/).first(3).join("/")
          # Ex: 674 => "000/000/674"
          id_partition = ("%09d" % instance.id).scan(/\d{3}/).join("/")
          
          # Caminho provável: public/system/:class/:attachment/:id_partition/original/:filename
          source_path = Rails.root.join("public", "system", model.table_name, attachment.pluralize, id_partition, "original", file_name)
          
          if File.exist?(source_path)
            puts "Encontrado: #{source_path}"
            begin
              instance.send(attachment).attach(
                io: File.open(source_path),
                filename: file_name,
                content_type: instance.send("#{attachment}_content_type")
              )
              puts "✅ #{attachment} migrado para ID #{instance.id}"
            rescue => e
              puts "❌ Erro ao migrar #{attachment} para ID #{instance.id}: #{e.message}"
            end
          else
            puts "⚠️ Arquivo não encontrado: #{source_path}"
          end
        end
      end
    end
    puts "Migração concluída!"
  end
end
