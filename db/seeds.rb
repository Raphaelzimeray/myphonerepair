# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'open-uri'


puts "Cleaning database"

Phone.destroy_all

puts 'Creating 10 phones'

iphone14pro = Phone.new(
  brand: "Apple",
  model: "I Phone 14 Pro",
  capacity: 256,
  color: "Violet",
  camera: "48 Mpx",
  year: 2022,
  processor: "A16 Bionic",
  price: 1459
)

file = URI.open('')
iphone14pro.photos.attach(io: file, filename: '', content_type: '')
iphone14pro.save!
puts "#{iphone14pro.model} has been created!"
