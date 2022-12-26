class Brewery < ApplicationRecord
  geocoded_by :location
  # after_validation :geocode

  def location
    address
  end
end
