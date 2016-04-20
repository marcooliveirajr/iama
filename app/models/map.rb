class Map < ActiveRecord::Base
  belongs_to :hospital
  belongs_to :bedroom
  belongs_to :patient
  belongs_to :health_terminology
  belongs_to :tuss2_id, class_name: "HealthTerminology"
  belongs_to :tuss3_id, class_name: "HealthTerminology"
  belongs_to :tuss4_id, class_name: "HealthTerminology"
  belongs_to :tuss5_id, class_name: "HealthTerminology"
  belongs_to :surgeon
  belongs_to :anesthetist
  belongs_to :health_insurance
  belongs_to :receipt#, class_name: "Anesthetist"
  belongs_to :payment_method
  belongs_to :payment_recipient
  has_many :payment_maps

  validates :surgeon_id, presence: { message: 'Necessário informar um Cirurgião' }

  def terminology_version
    return HealthTerminology.where(version_id: health_insurance.id).all unless health_insurance.nil?
    []
  end
end
