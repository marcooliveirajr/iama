class Version < ApplicationRecord
  validates :name, presence: { message: 'Necessário informar um nome para versão' }
end

