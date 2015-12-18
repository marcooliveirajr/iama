class Hospital < ActiveRecord::Base
  has_many :bedrooms
  validates :name, presence: { message: :required_name }
end
