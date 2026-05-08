class AddCellphoneToAnesthetists < ActiveRecord::Migration[4.2]
  def change
    add_column :anesthetists, :cellphone, :string
  end
end

