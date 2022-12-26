class BreweriesController < ApplicationController
  def index
    breweries = Brewery.all
    render json: breweries.as_json
  end

  # def location
    # Breweries.each do |brewery|

    # end
    
    # results = Geocoder.search(brewery)
    # results.first.coordinates
    # render json: results.as_json
  # end
endf
