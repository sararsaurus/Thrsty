class Brewery < ApplicationRecord
  geocoded_by :address
  # after_validation :geocode

  # def location
  #   address
  # end
end
