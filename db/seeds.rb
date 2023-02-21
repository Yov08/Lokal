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
  description: "Discover Mauritius paradise lifestyle, epic beach/club parties and amazing excursions trips! ",
  price_normal: 400,
  price_vip: 1000,
  address: "Royal Road, Coteau Raffin, Black River",
  capacity: 2000,
  image_url: "https://scontent.fmru7-1.fna.fbcdn.net/v/t39.30808-6/325892634_715209850069089_4637343665437270031_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=8631f5&_nc_ohc=ljZn33TyJdEAX-xa1kZ&_nc_ht=scontent.fmru7-1.fna&oh=00_AfB7sAWLPUNGzEE8YWmCmeHrvTkj9wNjA-bCkHvU8sfBRQ&oe=63F5142A"
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

puts "Destroying event_artists"
EventArtist.destroy_all
puts "Creating event_artists"
EventArtist.create!(
  name: "kaya",
  surname: "Popise",
  email: "kayaman@gmail.com",
  category: "Reggea",
  hourly_rate: "200",
  photo: "https://otayo.com/wp-content/uploads/2022/07/Kaya-2.jpg"
)
EventArtist.create!(
  name: "Annega",
  surname: "Annaise",
  email: "annega@gmail.com",
  category: "Pop",
  hourly_rate: "1000",
  photo: "https://otayo.com/wp-content/uploads/2022/07/anne-ga-4.jpg"
)
EventArtist.create!(
  name: "Hans",
  surname: "Nayna",
  email: "kayaman@gmail.com",
  category: "Music for Soul",
  hourly_rate: "200",
  photo: "https://otayo.com/wp-content/uploads/2022/07/hans-nayna-3.jpg"
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
