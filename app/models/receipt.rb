class Receipt < ActiveRecord::Base
  has_many :map, dependent: :restrict_with_error
end
