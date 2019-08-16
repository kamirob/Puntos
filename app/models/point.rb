class Point < ApplicationRecord
    has_many :item_outputs
    paginates_per 5
end
