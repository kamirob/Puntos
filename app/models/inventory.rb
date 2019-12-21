class Inventory < ApplicationRecord
  after_save :add_inventory

  belongs_to :item_entry

  private
  def add_inventory
    
  end  
end
