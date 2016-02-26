class OnDuty < ActiveRecord::Base
  belongs_to :anesthetist
  validates :on_duty_date, presence: { message: 'Necessário informar uma data de plantão' }
  validates :anesthetist_id, presence: { message: 'Necessário informar um Anestesista' }
end
