class ValorantMap < ApplicationRecord
  has_many :locations
  has_many :characters, through: :locations
end
