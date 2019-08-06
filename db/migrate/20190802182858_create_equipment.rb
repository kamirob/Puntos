class CreateEquipment < ActiveRecord::Migration[5.2]
  def change
    create_table :equipment do |t|
      t.string :name
      t.string :serial
      t.string :fixed_assets

      t.timestamps
    end
  end
end
