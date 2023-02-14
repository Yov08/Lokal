# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Destroying events"
Event.destroy_all
puts "Creating events"
Event.create!(
  name: "Pure at Lux",
  date: "30.07.2023",
  venue: "Grand Gaube ",
  description: "This 3-day Music & Beach festival will occur on the 7th, 8th, and 9th of August. For the first time in Mauritius, an entire resort is being privatised for a 3-day festival. ",
  price_normal: 2000,
  price_vip: 3000,
  address: "Lux Grand Gaube",
  capacity: 1000,
  image_url: "https://scontent.fmru4-1.fna.fbcdn.net/v/t1.6435-9/106805838_3207637609282733_6413803682731626488_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=973b4a&_nc_ohc=Dfz130joYH0AX-vG_zM&_nc_ht=scontent.fmru4-1.fna&oh=00_AfCLZros5_KXnwMaKt5bVa3qg-PaNqDhcFxeAYz_6P2u-Q&oe=64130F68"
)
Event.create!(
  name: "Mauritius Open Air Festival",
  date: "23.07.2023",
  venue: "Nou Le Morne",
  description: "Discover Mauritius’ paradise lifestyle, epic beach/club parties and amazing excursions trips! ",
  price_normal: 400,
  price_vip: 1000,
  address: "Royal Road, Coteau Raffin, Black River",
  capacity: 2000,
  image_url: "https://scontent.fmru4-1.fna.fbcdn.net/v/t39.30808-6/328333023_699301461669729_1901966523216265308_n.png?_nc_cat=109&ccb=1-7&_nc_sid=e3f864&_nc_ohc=JD_zkievJy8AX-pp3m4&_nc_ht=scontent.fmru4-1.fna&oh=00_AfD3bokjQIf7X3qUIlxmhgZ7TYPrdsj3PPNtlXLiNTmH_w&oe=63EFFBF1"
)
Event.create!(
  name: "Sakifo Music Festival",
  date: "02.06.2023",
  venue: "Saint Pierre ",
  description: "Since 2004, the Sakifo Musik Festival has thrilled festival-goers over 3 days to pop, rock, electro, maloya, etc. rhythms. More than 50 local, national and international artists will be welcomed on the 5 stages of the festival.",
  price_normal: 2000,
  price_vip: 4000,
  address: " Motorway M3, Cote D'Or, St Pierre",
  capacity: 5000,
  image_url: "https://www.monticket.re/storage/4043/affiche-4X3-sakifo-2023.jpg"
)
puts "Finished!"

puts "Destroying artists"
Artist.destroy_all
puts "Creating artists"
Artist.create!(
  name: "kaya",
  surname: "popise",
  email: "kayaman@gmail.com",
  category: "reggea",
  hourly_rate: "200",
  photo: "http//www.mra.com"
)
Artist.create!(
  name: "annega",
  surname: "annaise",
  email: "annega@gmail.com",
  category: "pop",
  hourly_rate: "1000",
  photo: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwearefreedom.studio%2Fcasestudy-annega%2F&psig=AOvVaw3Oj9k-cTSlpe2Y0qqhErVZ&ust=1676211177015000&source=images&cd=vfe&ved=0CA8QjRxqFwoTCOCNiq_Tjf0CFQAAAAAdAAAAABAE"
)
Artist.create!(
  name: "hans",
  surname: "nayna",
  email: "kayaman@gmail.com",
  category: "reggea",
  hourly_rate: "200",
  photo: "https://otayo.com/en/artists/hans-nayna/"
)
puts "Finished!"

# puts "Destroying users"
# User.destroy_all
# puts "Creating users"
# User.create!(
#   first_name: "damien",
#   last_name: "lemoine",
#   user_type: "user",
#   image_url: "https://www.footmercato.net/",
#   category: "reggea don sa",
#   biography: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi consectetur aliquet mauris ut tincidunt. Nullam convallis magna sed erat placerat posuere. Pellentesque ultrices pellentesque turpis, vel condimentum est pellentesque sed. Maecenas fringilla, purus vel ultricies convallis, sem libero egestas lectus, faucibus eleifend sapien felis et lacus. Praesent orci mauris, posuere laoreet semper vitae, aliquam vitae est. Mauris eget lacus eu lectus tincidunt ornare. N",
#   rating: "200",
#   hourly_rate: "20",
#   email: "d.lemoine@gmail.com",
#   reset_password_token: "123456789"
# )
# User.create!(
#   first_name: "robert",
#   last_name: "franklin",
#   user_type: "user",
#   image_url: "https://www.footmercato.net/",
#   category: "reggea don sa",
#   biography: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi consectetur aliquet mauris ut tincidunt. Nullam convallis magna sed erat placerat posuere. Pellentesque ultrices pellentesque turpis, vel condimentum est pellentesque sed. Maecenas fringilla, purus vel ultricies convallis, sem libero egestas lectus, faucibus eleifend sapien felis et lacus. Praesent orci mauris, posuere laoreet semper vitae, aliquam vitae est. Mauris eget lacus eu lectus tincidunt ornare. N",
#   rating: "2000",
#   hourly_rate: "200",
#   email: "r.franklin@gmail.com",
#   reset_password_token: "123456789"
# )
# puts "Finished!"


# require "faker"
# puts "Creating 3 fake events"
# 3.times do
#   event =Event.new(
#     name: Faker::Name.name,
#     date: Faker::Date.between(from: '2023-09-23', to: '2024-09-24'),
#     venue: Faker::Address.city,
#     description: Faker::Lorem.unique.exclude,
#     price_normal: Faker::Number.binary,
#     price_vip: Faker::Number.binary,
#     address: Faker::Address.secondary_address,
#     capacity: Faker::Number.binary,
#     image_url: Faker::Internet.domain_name(subdomain: true, domain: "example")
#   )
#   event.save!
# end
# puts "finished!"
