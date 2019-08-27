class CreateEquipmentPoints < ActiveRecord::Migration[5.2]
  def change
    create_table :equipment_points do |t|
      t.references :point, foreign_key: true
      t.references :equipment, foreign_key: true
      t.integer :fixed_assets

      t.timestamps
    end
  end
end
