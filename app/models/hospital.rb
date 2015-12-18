class Hospital < ActiveRecord::Base
  has_many :bedrooms
  validates :name, presence: { message: 'Necessário informar um nome' }
end
