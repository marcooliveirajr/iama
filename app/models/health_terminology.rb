class HealthTerminology < ActiveRecord::Base
  has_many :maps
  validates :code_tuss, format: { with: /([0-9]{1,7})/, message: 'Não é um número válido' }
end
