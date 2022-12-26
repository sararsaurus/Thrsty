class AddLatitudeToBreweries < ActiveRecord::Migration[7.0]
  def change
    add_column :breweries, :latitude, :decimal
    add_column :breweries, :longitude, :decimal
  end
end
