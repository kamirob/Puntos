class AddEquipmentsToItemOutputs < ActiveRecord::Migration[5.2]
  def change
    add_reference :item_outputs, :equipment, foreign_key: true
  end
end
