class AddCategoryEquipmentsRefToItemOutputs < ActiveRecord::Migration[5.2]
  def change
    add_reference :item_outputs, :category_equipment, foreign_key: true
  end
end
