class Brewery < ApplicationRecord
  geocoded_by :address
  # after_validation :geocode, if: ->(address_field) {
  #                              address_field.value.present? and address_field.value_changed?
  #                            }
  # before_save :if => { |_| self.address_changed? && self.address.present? } do
  #   result = Geocoder.search(self.address)
  #   self.lat, self.lng = result.lat, result.lng
  # end

  def address
    [street, city, state, zipcode].compact.join(", ")
  end
end
