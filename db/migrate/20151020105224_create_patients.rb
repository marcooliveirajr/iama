class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :name
      t.string :cpf
      t.integer :phone
      t.string :email
      t.string :address
      t.integer :address_number
      t.string :address_complement
      t.string :district
      t.string :city
      t.integer :postal_code
      t.string :state

      t.timestamps null: false
    end
  end
end
