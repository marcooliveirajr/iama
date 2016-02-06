class HealthInsurance < ActiveRecord::Base
  belongs_to :version
  has_many :size_surgeries
  validates :version_id, presence: { message: 'Necessário informar a versão da tabela' }
  validates :name, presence: { message: :required_name }
end
