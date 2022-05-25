# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Creating restaurants..."
(5).times do
  restaurant = Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address,
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample,
    phone_number: Faker::PhoneNumber
    )
  p "#{restaurant}"
  end

puts "Finished..."

puts "Creating reviews..."
(100).times do
  review = Review.create!(
    rating: rand(0..5),
    content: Faker::Lorem.sentence,
    restaurant_id: rand(1..5)
  )
  p "#{review}"
end

puts "Finished reviews.."
