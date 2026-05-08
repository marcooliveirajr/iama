class CreateAnesthetists < ActiveRecord::Migration[4.2]
  def change
    create_table :anesthetists do |t|
      t.string :name
      t.string :rg
      t.string :cpf
      t.string :phone
      t.string :email
      t.string :address
      t.integer :address_number
      t.string :address_complement
      t.string :district
      t.string :city
      t.string :postal_code
      t.string :state
      t.text :note

      t.timestamps null: false
    end
  end
end

