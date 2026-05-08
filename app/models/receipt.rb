class Receipt < ApplicationRecord
  has_many :map, dependent: :restrict_with_error
end

