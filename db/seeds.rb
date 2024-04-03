require "csv"

Laptop.delete_all

filename = Rails.root.join("db/Cleaned_Laptop_data.csv")

puts "#{filename}"

csv_data = File.read(filename)
laptops = CSV.parse(csv_data, headers: true, encoding: "utf-8")

laptops.each do |l|
  puts l[""]
end