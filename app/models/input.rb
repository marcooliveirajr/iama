class Input < ActiveRecord::Base
  belongs_to :category
  validates :category_id, presence: { message: 'Necessário informar uma Categoria' }
  validates :name, presence: { message: :required_name }
end
