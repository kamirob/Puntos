class CreateItemOutputs < ActiveRecord::Migration[5.2]
  def change
    create_table :item_outputs do |t|
      t.string :item_name
      t.date :departure_date
      t.integer :quantity
      t.string :point
      t.integer :fixed_asset

      t.timestamps
    end
  end
end
