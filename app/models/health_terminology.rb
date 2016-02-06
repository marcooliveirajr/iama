class HealthTerminology < ActiveRecord::Base
  has_many :maps
  belongs_to :version
  validates :version_id, presence: { message: 'Necessário informar a versão da tabela' }
  validates :code_tuss, format: { with: /([0-9]{1,7})/, message: 'Não é um número válido' }
end
