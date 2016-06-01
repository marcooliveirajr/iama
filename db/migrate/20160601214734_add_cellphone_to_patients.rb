class AddCellphoneToPatients < ActiveRecord::Migration
  def change
    add_column :patients, :cellphone, :string
  end
end
