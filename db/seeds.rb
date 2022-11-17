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
  camera: "48 Megapixels",
  year: 2022,
  processor: "A16 Bionic",
  price: 1459
)

file = URI.open('https://www.apple.com/v/iphone-14-pro/c/images/overview/hero/hero_endframe__dtzvajyextyu_large.jpg')
iphone14pro.photo.attach(io: file, filename: 'iphone14pro.jpg', content_type: 'iphone14pro/jpg')
iphone14pro.save!
puts "#{iphone14pro.model} has been created!"

samsunggalaxys22 = Phone.new(
  brand: "Samsung",
  model: "S22 Ultra",
  capacity: 512,
  color: "Gris",
  camera: "108 Megapixels",
  year: 2022,
  processor: "SoC Exynos 2200",
  price: 1349
)

file = URI.open('')
samsunggalaxys22.photo.attach(io: file, filename: '', content_type: '')
samsunggalaxys22.save!

puts "#{samsunggalaxys22.model} has been created!"

googlepixel7 = Phone.new(
  brand: "Google",
  model: "Pixel 7",
  capacity: 128,
  color: "Vert",
  camera: "50 + 12 Megapixels"
  year: 2022,
  processor: "Tensor G2",
  price: 649
)

file = URI.open('')
googlepixel7.photo.attach(io: file, filename: '', content_type: '')
googlepixel7.save!

puts "#{googlepixel7.model} has been created!"

nokia7plus = Phone.new(
  brand: "Nokia",
  model: "7 Plus",
  capacity: 256,
  color: "Blanc",
  camera: "13 Megapixels"
  year: 2018,
  processor: "Snapdragon 660",
  price: 184
)

file = URI.open('')
nokia7plus.photo.attach(io: file, filename: '', content_type: '')
nokia7plus.save!
puts "#{nokia7plus.model} has been created!"


motorolarazr = Phone.new(
  brand: "Motorola",
  model: "Razr 2022",
  capacity: 256,
  color: "Noir",
  camera: "50 + 13 Megapixels",
  year: 2022,
  processor: "Snapdraon 8+ Gen1",
  price: 1299
)

file = URI.open('')
motorolarazr.photo.attach(io: filename: '', content_type: '')
motorolarazr.save!

puts "#{motorolarazr.model} has been created!"
