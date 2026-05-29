class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class

  # Substitui a funcionalidade da gem brazilian-rails
  # Converte "3.321,00" para "3321.00" antes de salvar no banco
  def self.usar_como_dinheiro(*fields)
    fields.each do |field|
      define_method "#{field}=" do |value|
        if value.is_a?(String) && value.match?(/,/)
          value = value.gsub('.', '').gsub(',', '.')
        end
        super(value)
      end
    end
  end
end
