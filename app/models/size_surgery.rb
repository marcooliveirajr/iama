class SizeSurgery < ActiveRecord::Base
  belongs_to :health_insurance
  validates :health_insurance_id, presence: { message: 'Necessário informar um convênio médico' }
  validates :size, presence: { message: 'Necessário informar o porte da cirurgia' }
end
