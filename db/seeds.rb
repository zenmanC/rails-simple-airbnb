# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Clearing Database"
Flat.destroy_all

puts "Generating Fake Database"

price_array = [50, 100, 75, 150]
guests_array = [1, 2, 3]

6.times do
  Flat.create!(
  name: Faker::Book.title,
  address: Faker::Address.city,
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: price_array.sample,
  number_of_guests: guests_array.sample
)
end

puts "DB Created"
