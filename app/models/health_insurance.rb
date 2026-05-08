class HealthInsurance < ApplicationRecord
  belongs_to :version
  has_many :map, dependent: :restrict_with_error
  has_many :size_surgeries, dependent: :restrict_with_error
  validates :version_id, presence: { message: 'Necessário informar a versão da tabela' }
  validates :name, presence: { message: :required_name }
end

