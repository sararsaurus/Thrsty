require "csv"

csv_text = File.read(Rails.root.join("lib", "seeds", "breweries_us.csv"))
csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
csv.each do |row|
  q = Query.new
  q.brewery_name = row["brewery_name"]
  q.type = row["type"]
  q.address = row["address"]
  q.website = row["website"]
  q.state = row["state"]
  q.state_breweries = row["state_breweries"]
  q.save
  # puts "#{q.brewery_name}, #{q.address} saved"
end

puts csv
