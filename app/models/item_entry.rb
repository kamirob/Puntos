class ItemEntry < ApplicationRecord
  belongs_to :supplier
  belongs_to :equipment
  has_many :inventories
end
