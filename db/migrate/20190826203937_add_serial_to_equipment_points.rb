class AddSerialToEquipmentPoints < ActiveRecord::Migration[5.2]
  def change
    add_column :equipment_points, :serial, :string
    add_column :equipment_points, :brand, :string
  end
end
