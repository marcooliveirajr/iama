class Category < ActiveRecord::Base
  has_many :input, dependent: :restrict_with_error
  has_many :output, dependent: :restrict_with_error
  validates :name, presence: { message: :required_name }
end
