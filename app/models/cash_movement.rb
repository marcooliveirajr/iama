class CashMovement < ActiveRecord::Base
  belongs_to :input
  belongs_to :output
  validates :input_id, presence: { message: 'Necessário informar uma Entrada ou Saída' }, unless: ->(cash_movement){cash_movement.output_id.present?}
  validates :output_id, presence: { message: 'Necessário informar uma Entrada ou Saída' }, unless: ->(cash_movement){cash_movement.input_id.present?}
  
  #validates :input_id, presence: { message: 'Ne' }, if: ->(cash_movement){ !output_id.blank? && !input_id.blank? }
  #validates :output_id, presence: { message: 'Ne' }, if: ->(cash_movement){ !cash_movement.input_id.blank? && !cash_movement.output_id.blank? }
  
  #validates :input_id, :presence => { message: 'Ne' }, :if => "(!input_id.blank? && !output_id.blank?)"
  #validates_presence_of :output_id, :presence => { message: 'Ne' }, :if => "!(input_id.present?) & !(output_id.present?)"


  validates :time_movement, presence: { message: 'Necessário informar uma Data de Movimento' }
  validates :movement_value, presence: { message: 'Necessário informar um Valor do Movimento' }
	
	validates :input_id, presence: { message: 'Ne' }, if: ->(cash_movement){ input_output_not_blank? }
	#validates :output_id, presence: { message: 'Ne' }, if: ->(cash_movement){ input_output_not_blank? }

	private
	def input_output_not_blank?
	  !(input_id.blank?) && !(output_id.blank?)
	end
end
