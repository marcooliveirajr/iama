class HealthInsurance < ActiveRecord::Base
	has_many :size_surgeries
  validates :name, presence: { message: :required_name }
end
