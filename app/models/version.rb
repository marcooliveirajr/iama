class Version < ActiveRecord::Base
  validates :name, presence: { message: 'Necessário informar um nome para versão' }
end
