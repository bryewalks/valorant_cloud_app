class ValorantMap < ApplicationRecord
  has_many :characters
  has_many :locations
end
