class Location < ApplicationRecord
  belongs_to :valorant_map
  belongs_to :character
end
