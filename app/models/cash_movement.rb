class CashMovement < ActiveRecord::Base
  belongs_to :input
  belongs_to :output
  validates :movement_value, presence: { message: 'Necessário informar um Valor do Movimento' }
  validates_numericality_of :movement_value
  validates :time_movement, presence: { message: 'Necessário informar uma Data de Movimento' }
  
  validates :input_id, presence: { message: 'Necessário informar uma Entrada ou Saída' }, unless: ->(cash_movement){ cash_movement.output_id.present? }
  validates :output_id, presence: { message: 'Necessário informar uma Entrada ou Saída' }, unless: ->(cash_movement){ cash_movement.input_id.present? }
  
	validate :input_output_not_blank

	private
	def input_output_not_blank
	  if !(input_id.blank?) && !(output_id.blank?)
	  	errors.add(:input_id, "Não é possível selecionar Entrada e Saída no mesmo Movimento")
	  end
	end
end
