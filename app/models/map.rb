class Map < ActiveRecord::Base
  belongs_to :hospital
  belongs_to :bedroom
  belongs_to :patient
  belongs_to :health_terminology
  belongs_to :surgeon
  belongs_to :anesthetist
  belongs_to :health_insurance
end
