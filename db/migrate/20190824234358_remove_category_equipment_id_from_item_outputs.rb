class RemoveCategoryEquipmentIdFromItemOutputs < ActiveRecord::Migration[5.2]
  def change
    remove_column :item_outputs, :category_equipment_id, :string
  end
end
