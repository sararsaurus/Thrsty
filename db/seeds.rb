require "csv"
CSV.foreach(Rails.root.join("lib/breweries_us.csv"), headers: true) do |row|
  Brewery.create({
    brewery_name: row[0],
    address: row[2],
    website: row[3],
  })
end

# https://itnext.io/how-to-seed-a-rails-database-with-a-csv-file-105a7ba0e88c
