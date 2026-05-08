class Hospital < ApplicationRecord
  has_many :map, dependent: :restrict_with_error
  validates :name, presence: { message: :required_name }
end

