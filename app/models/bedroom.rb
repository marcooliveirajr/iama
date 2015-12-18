class Bedroom < ActiveRecord::Base
  belongs_to :hospital
  validates :name, presence: { message: :required_name }
  validates :hospital_id, presence: { message: 'Necessário informar um hospital' }
end
