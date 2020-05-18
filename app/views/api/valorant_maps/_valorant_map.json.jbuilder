json.id valorant_map.id
json.title valorant_map.title
json.locations do
  json.array! valorant_map.locations do | location |
    json.partial! location, partial: '../locations/location', as: :location
  end
end