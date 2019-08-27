class EquipmentPoint < ApplicationRecord
  belongs_to :point
  belongs_to :equipment
end
