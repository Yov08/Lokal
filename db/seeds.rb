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
  name: "festival creole",
  date: "24.09.2023",
  venue: "green park",
  description: "an event for showing our culture",
  price_normal: 500,
  price_vip: 700,
  address: "port louis",
  capacity: 1000,
  image_url: "http//portlouis.mu"
)
Event.create!(
  name: "sakifo",
  date: "24.10.2023",
  venue: "red park",
  description: "an unique event",
  price_normal: 400,
  price_vip: 1000,
  address: "le morne",
  capacity: 2000,
  image_url: "http//mpta.mu"
)
Event.create!(
  name: "embas pied",
  date: "24.09.2023",
  venue: "green park",
  description: "an event for showing our culture",
  price_normal: 500,
  price_vip: 1000,
  address: "le morne",
  capacity: 2000,
  image_url: "http//mpta.mu"
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


puts "Destroying users"
User.destroy_all
puts "Creating users"
User.create!(
  first_name: "damien",
  surname: "popise",
  email: "kayaman@gmail.com",
  category: "reggea",
  hourly_rate: "200",
  photo: "http//www.mra.com"


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
