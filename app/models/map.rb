class Map < ApplicationRecord
  has_one_attached :attachment_map
  has_one_attached :attachment_receipt
  has_one_attached :attachment_pay    
  # usar_como_dinheiro :receipt_value
  belongs_to :hospital
  belongs_to :bedroom
  belongs_to :patient
  belongs_to :health_terminology
  belongs_to :tuss2_id, class_name: "HealthTerminology"
  belongs_to :tuss3_id, class_name: "HealthTerminology"
  belongs_to :tuss4_id, class_name: "HealthTerminology"
  belongs_to :tuss5_id, class_name: "HealthTerminology"
  belongs_to :surgeon
  belongs_to :surgeon1_id, class_name: "Surgeon"
  belongs_to :surgeon2_id, class_name: "Surgeon"
  belongs_to :anesthetist
  belongs_to :anesthetist1_id, class_name: "Anesthetist"
  belongs_to :anesthetist2_id, class_name: "Anesthetist"
  belongs_to :health_insurance
  belongs_to :health_plan
  belongs_to :receipt
  belongs_to :payment_method
  belongs_to :payment_recipient
  has_many :payment_maps
  validates :time_surgery, presence: { message: 'Necessário informar uma Data de Cirurgia' }
  validates :surgeon_id, presence: { message: 'Necessário informar um Cirurgião' }
  validates :attachment_map, content_type: ["image/jpeg", "image/png"]
  validates :attachment_receipt, content_type: ["image/jpeg", "image/png"]
  validates :attachment_pay, content_type: ["image/jpeg", "image/png"]
  
  def terminology_version
    return HealthTerminology.where(version_id: health_insurance.id).all unless health_insurance.nil?
    []
  end
end


