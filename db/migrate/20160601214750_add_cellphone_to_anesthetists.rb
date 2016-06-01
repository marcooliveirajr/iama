class AddCellphoneToAnesthetists < ActiveRecord::Migration
  def change
    add_column :anesthetists, :cellphone, :string
  end
end
