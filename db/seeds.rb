require "csv"

Laptop.delete_all
Province.delete_all

filename = Rails.root.join("db/laptop_price.csv")

puts "#{filename}"

csv_data = File.read(filename)
laptops = CSV.parse(csv_data, headers: true, encoding: "utf-8")

laptops.each do |l|
  # puts l["Price_euros"]
  #Convert Euro price to Canadian dollars.
  price_dollars = l["Price_euros"].to_f * 1.46
  description = Faker::Lorem.paragraph(sentence_count: 3)

  #Create the laptops
  laptop = Laptop.create(
    laptop_name: l["Product"],
    brand: l["Company"],
    model: l["TypeName"],
    processor: l["Cpu"],
    price: price_dollars,
    ram: l["Ram"],
    storage: l["Memory"],
    operating_system: l["OpSys"],
    gpu: l["Gpu"],
    size: l["Inches"],
    description: description
    )

  if laptop.valid?
    laptop.save
    # puts "#{l["Product"]} Saved."
  else
    puts "Error creating #{l["Product"]}. #{laptop.errors.full_messages.join(", ")}"
  end
end

provinces_data = [
  { province_name: 'Ontario', pst: 0, gst: 0, hst: 0.13 },
  { province_name: 'Quebec', pst: 0.09975, gst: 0.05, hst: 0 },
  { province_name: 'Nova Scotia', pst: 0, gst: 0, hst: 0.15 },
  { province_name: 'New Brunswick', pst: 0, gst: 0, hst: 0.15 },
  { province_name: 'Manitoba', pst: 0.07, gst: 0.05, hst: 0 },
  { province_name: 'British Columbia', pst: 0.07, gst: 0.05, hst: 0 },
  { province_name: 'Prince Edward Island', pst: 0, gst: 0, hst: 0.15 },
  { province_name: 'Saskatchewan', pst: 0.06, gst: 0.05, hst: 0 },
  { province_name: 'Alberta', pst: 0, gst: 0.05, hst: 0 },
  { province_name: 'Newfoundland and Labrador', pst: 0, gst: 0, hst: 0.15 }
]

provinces_data.each do |province_data|
  Province.create(province_data)
end

AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?