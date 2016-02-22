class Hospital < ActiveRecord::Base
  validates :name, presence: { message: :required_name }
end
