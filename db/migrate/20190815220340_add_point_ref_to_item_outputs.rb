class AddPointRefToItemOutputs < ActiveRecord::Migration[5.2]
  def change
    add_reference :item_outputs, :point, foreign_key: true
  end
end
