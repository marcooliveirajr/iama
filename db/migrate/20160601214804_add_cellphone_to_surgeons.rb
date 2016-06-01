class AddCellphoneToSurgeons < ActiveRecord::Migration
  def change
    add_column :surgeons, :cellphone, :string
  end
end
