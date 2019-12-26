class EquipmentPoint < ApplicationRecord
  belongs_to :point
  belongs_to :equipment
  
  def thumbnail
    return self.image.variant(resize: '50x50')
  end
end
