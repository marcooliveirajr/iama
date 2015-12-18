class Bedroom < ActiveRecord::Base
  belongs_to :hospital
  validates :name, presence: { message: 'Necessário informar um nome' }
  validates :hospital_id, presence: { message: 'Necessário informar um hospital' }
end
