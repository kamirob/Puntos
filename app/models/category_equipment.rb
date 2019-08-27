class CategoryEquipment < ApplicationRecord
    has_one :equipment
    has_many :item_outputs
end
