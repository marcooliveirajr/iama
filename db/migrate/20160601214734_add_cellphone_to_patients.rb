class AddCellphoneToPatients < ActiveRecord::Migration[4.2]
  def change
    add_column :patients, :cellphone, :string
  end
end

