class AddInputTypeToCategory < ActiveRecord::Migration
  def change
    add_column :categories, :input_type, :string
  end
end
