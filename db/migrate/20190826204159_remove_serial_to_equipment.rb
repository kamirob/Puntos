class RemoveSerialToEquipment < ActiveRecord::Migration[5.2]
  def change
    remove_column :equipment, :serial, :string
    remove_column :equipment, :fixed_assets, :string
  end
end
