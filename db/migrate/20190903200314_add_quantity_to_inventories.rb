class AddQuantityToInventories < ActiveRecord::Migration[5.2]
  def change
    add_column :inventories, :quantity, :integer
  end
end
