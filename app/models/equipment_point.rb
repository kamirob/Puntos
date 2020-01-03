class EquipmentPoint < ApplicationRecord
  belongs_to :point
  belongs_to :equipment
  enum brand: [:LG, :SAMSUNG, :EPSON, 
              :POWERGROUP, :TPLINK, :ACER, 
              :GENIUS, :LENOVO, :DYNOPOS, 
              :DIGITALPOS, :SAT, :UNITEC, 
              :HIKVISION, :ASUS, :DLINK, 
              :APC, :LOGITEC, :TOSHIBA, 
              :HP, :SANYO]
  
  def thumbnail
    return self.image.variant(resize: '50x50')
  end
end
