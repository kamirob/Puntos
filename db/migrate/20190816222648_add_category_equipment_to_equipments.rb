class AddCategoryEquipmentToEquipments < ActiveRecord::Migration[5.2]
  def change
    add_reference :equipment, :category_equipment, foreign_key: true
  end
end
