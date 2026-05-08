class AddSurgeon2ToMaps < ActiveRecord::Migration[4.2]
  def change
    add_column :maps, :surgeon2, :integer
  end
end

