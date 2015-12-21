class HealthTerminology < ActiveRecord::Base
  has_many :maps
  validates :code_tuss, format: { with: /([0-9]{1,7})/, message: 'Não é um número válido' }
  #validates :code_tuss, numericality: { less_than_or_equal_to: 9999999, message: 'Informar somente números' }
end
