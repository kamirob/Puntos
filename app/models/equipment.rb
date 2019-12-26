class Equipment < ApplicationRecord
    belongs_to :category_equipment
    has_many :equipment_points
    has_many :item_entries
    has_one_attached :image

    def thumbnail
        return self.image.variant(resize: '50x50')
    end
end
