class CategoryEquipment < ApplicationRecord
    has_many :equipment
    has_many :item_outputs
end
