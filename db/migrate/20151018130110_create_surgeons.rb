class CreateSurgeons < ActiveRecord::Migration
  def change
    create_table :surgeons do |t|
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
      t.integer :postal_code
      t.string :state
      t.text :note

      t.timestamps null: false
    end
  end
end
