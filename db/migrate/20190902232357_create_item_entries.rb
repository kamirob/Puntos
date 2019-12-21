class CreateItemEntries < ActiveRecord::Migration[5.2]
  def change
    create_table :item_entries do |t|
      t.integer :quantity
      t.integer :unit_value
      t.integer :total_value
      t.references :supplier, foreign_key: true
      t.references :equipment, foreign_key: true

      t.timestamps
    end
  end
end
