class CashMovement < ActiveRecord::Base
  belongs_to :input
  belongs_to :output
end
