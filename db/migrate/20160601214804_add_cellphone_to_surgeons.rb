class AddCellphoneToSurgeons < ActiveRecord::Migration[4.2]
  def change
    add_column :surgeons, :cellphone, :string
  end
end

