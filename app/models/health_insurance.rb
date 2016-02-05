class HealthInsurance < ActiveRecord::Base
  belongs_to :version
	has_many :size_surgeries
  validates :name, presence: { message: :required_name }
end
