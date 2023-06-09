# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# db/seeds.rb

require 'faker'
require_relative '../app/models/restaurant'

category_seed = ["chinese", "italian", "japanese", "french", "belgian"]

puts "Cleaning database..."
Restaurant.destroy_all

puts 'Creating 10 fake restaurants...'
5.times do
  restaurant = Restaurant.new(name: Faker::Restaurant.name, address: Faker::Address.street_address, category: category_seed.sample )
  restaurant.save!
end
puts "Finished!"
