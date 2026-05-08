class SizeSurgery < ApplicationRecord
  # usar_como_dinheiro :value_measure
  belongs_to :health_insurance
  validates :health_insurance_id, presence: { message: 'Necessário informar um convênio médico' }
  validates :measure, presence: { message: 'Necessário informar o porte da cirurgia' }
end


