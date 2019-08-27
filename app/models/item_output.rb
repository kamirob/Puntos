class ItemOutput < ApplicationRecord
    belongs_to :point
    belongs_to :equipment
    paginates_per 5
end
