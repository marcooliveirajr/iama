class HealthInsurance < ActiveRecord::Base
  belongs_to :health_terminology
	has_many :size_surgeries
  validates :name, presence: { message: :required_name }
end
