class Equipment < ApplicationRecord
    belongs_to :category_equipment
    has_many :equipment_points
end
