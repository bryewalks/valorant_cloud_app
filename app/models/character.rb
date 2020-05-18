class Character < ApplicationRecord
  has_many :locations
  has_many :valorant_maps, through: :locations
end
