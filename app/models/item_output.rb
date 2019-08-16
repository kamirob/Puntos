class ItemOutput < ApplicationRecord
    belongs_to :point
    belongs_to :category_equipment
    paginates_per 5
end
