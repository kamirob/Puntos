class CategoryEquipment < ApplicationRecord
    has_many :equipments
    has_many :item_outputs
end
