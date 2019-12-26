class Point < ApplicationRecord
    has_many :item_outputs
    has_many :equipment_points
    paginates_per 5
    validates :name, :address, :vpn, :co, :isp, presence: true
end
