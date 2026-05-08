class AddInputTypeToCategory < ActiveRecord::Migration[4.2]
  def change
    add_column :categories, :input_type, :string
  end
end

