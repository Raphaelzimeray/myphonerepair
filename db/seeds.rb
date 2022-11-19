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

file = URI.open('https://droidsoft.fr/wp-content/uploads/2022/03/Samsung-Galaxy-S22-Introduction-scaled.jpg')
samsunggalaxys22.photo.attach(io: file, filename: 'samsungs22.jpg', content_type: 'samsungs22/jpg')
samsunggalaxys22.save!

puts "#{samsunggalaxys22.model} has been created!"

googlepixel7 = Phone.new(
  brand: "Google",
  model: "Pixel 7",
  capacity: 128,
  color: "Vert",
  camera: "50 + 12 Megapixels",
  year: 2022,
  processor: "Tensor G2",
  price: 649
)

file = URI.open('https://m.media-amazon.com/images/S/aplus-media-library-service-media/e8f773d8-520b-4fcf-a89c-53a92aa6e32f.__CR0,0,1464,600_PT0_SX1464_V1___.jpg')
googlepixel7.photo.attach(io: file, filename: 'googlepixel7.jpg', content_type: 'googlepixel7/jpg')
googlepixel7.save!

puts "#{googlepixel7.model} has been created!"

nokia7plus = Phone.new(
  brand: "Nokia",
  model: "7 Plus",
  capacity: 256,
  color: "Blanc",
  camera: "13 Megapixels",
  year: 2018,
  processor: "Snapdragon 660",
  price: 184
)

file = URI.open('https://360view.hum3d.com/zoom/Nokia/Nokia_7_Plus_White_1000_0002.jpg')
nokia7plus.photo.attach(io: file, filename: 'nokia.jpg', content_type: 'nokia/jpg')
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

file = URI.open('https://cdn.lesnumeriques.com/optim/news/18/189273/c390e811-motorola-razr-2022__1200_1200__273-0-1195-922.jpeg')
motorolarazr.photo.attach(io: file, filename: 'motorola.jpeg', content_type: 'motorola/jpeg')
motorolarazr.save!

puts "#{motorolarazr.model} has been created!"

huawei_y9 = Phone.new(
  brand: "Huawei",
  model: "Y9",
  capacity: 64,
  color: "Bleue",
  camera: "13 + 2 Megapixels",
  year: 2019,
  processor: "Krin 710",
  price: "143"
)

file = URI.open('https://cdns.4clik.com/smartphone/SMTPH9779/huawei-y9-prime-2019-128go-4g-pic-9-lg.jpg')
huawei_y9.photo.attach(io: file, filename: 'Huaweiy9.jpg', content_type: 'Huaweiy9/jpg')
huawei_y9.save!

puts "#{huawei_y9.model} has been created!"

iphoneSE = Phone.new(
  brand: "Apple",
  model: "Iphone SE",
  capacity: 64,
  color: "Rose",
  camera: "12 Megapixels",
  year: 2016,
  processor: "A9",
  price: "89"
)

file = URI.open('https://images.frandroid.com/wp-content/uploads/2016/05/iphone-se-15.jpg')
iphoneSE.photo.attach(io: file, filename: 'Iphonese.jpg', content_type: 'Iphonese/jpg')
iphoneSE.save!

puts "#{iphoneSE.model} has been created!"

iphone12promax = Phone.new(
  brand: "Apple",
  model: "Iphone 12 PRO Max",
  capacity: 256,
  color: "Bleu",
  camera: "12 Megapixels",
  year: 2020,
  processor: "A14 Bionic",
  price: "729"
)

file = URI.open('https://images.bfmtv.com/MAtvQtgAYvLnK43_8RImYaz23KI=/0x0:2048x1365/2048x0/biz_dev/1655121521444_iphone_12_pro_max_offre_cdiscount_jpg.jpg')
iphone12promax.photo.attach(io: file, filename: 'Iphone12pro.jpg', content_type: 'Iphone12pro/jpg')
iphone12promax.save!

puts "#{iphone12promax.model} has been created!"

samsungA71 = Phone.new(
  brand: "Samsung",
  model: "A71",
  capacity: 128,
  color: "Bleu",
  camera: "64 Megapixels",
  year: 2019,
  processor: "Snapdragon 730 Qualcomm",
  price: "279"
)

file = URI.open('https://media.ldlc.com/r1600/ld/products/00/05/55/97/LD0005559736_2.jpg')
samsungA71.photo.attach(io: file, filename: 'samsungA71.jpg', content_type: 'samsungA71/jpg')
samsungA71.save!

puts "#{samsungA71.model} has been created"


sony_xperia_10 = Phone.new(
  brand: "Sony",
  model: "Xperia 10",
  capacity: 128,
  color: "Noir",
  camera: "12 + 8 + 8 Megapixels",
  year: 2020,
  processor: "Snapdragon 665",
  price: "328"
)

file = URI.open('https://www.tradeinn.com/f/13798/137988687_2/sony-smartphone-xperia-10-ii-4gb-128gb-6-dual-sim.jpg')
sony_xperia_10.photo.attach(io: file, filename: 'sony.jpg', content_type: 'sony/jpg')
sony_xperia_10.save!

puts "#{sony_xperia_10.model} has been created!"
