require 'faker'

puts 'Cleaning database...'
Restaurant.destroy_all if Rails.env.development?

cities = ['Lausanne', 'Renens', 'Morges', 'Nyon']
categories = ["chinese", "italian", "japanese", "french", "belgian"]

puts 'Creating 5 restaurants...'
5.times do
  restaurant = Restaurant.create!(
    name: Faker::Restaurant.name,
    address: cities.sample,
    phone_number: "021#{rand.to_s[2..8]}",
    category: categories.sample
  )
  puts "Created #{restaurant.name}"
end

puts 'Finished'
