# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Destroying events"
Event.destroy_all
puts "Destroying users"
User.destroy_all
puts "Destroying artists"
Artist.destroy_all
puts "Destroying EventArtists"
EventArtist.destroy_all

puts "Creating events"
pure = Event.create!(
  name: "Pure at Lux",
  date: "30.07.2023",
  venue: "Grand Gaube ",
  description: "This 3-day Music & Beach festival will occur on the 7th, 8th, and 9th of August. For the first time in Mauritius, an entire resort is being privatised for a 3-day festival. ",
  price_normal: 2000,
  price_vip: 3000,
  address: "Lux Grand Gaube",
  capacity: 1000,
  image_url: "https://scontent.fmru4-1.fna.fbcdn.net/v/t1.6435-9/106805838_3207637609282733_6413803682731626488_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=973b4a&_nc_ohc=Dfz130joYH0AX-vG_zM&_nc_ht=scontent.fmru4-1.fna&oh=00_AfCLZros5_KXnwMaKt5bVa3qg-PaNqDhcFxeAYz_6P2u-Q&oe=64130F68",
  rating: 4.9
)
moaf = Event.create!(
  name: "Mauritius Open Air Festival",
  date: "23.07.2023",
  venue: "Nou Le Morne",
  description: "Discover Mauritius paradise lifestyle, epic beach/club parties and amazing excursions trips! ",
  price_normal: 400,
  price_vip: 1000,
  address: "Royal Road, Coteau Raffin, Black River",
  capacity: 2000,
  image_url: "https://scontent.fmru3-1.fna.fbcdn.net/v/t39.30808-6/328333023_699301461669729_1901966523216265308_n.png?stp=dst-png_p720x720&_nc_cat=109&ccb=1-7&_nc_sid=e3f864&_nc_ohc=KCpKpyRej8IAX8Ngwn5&_nc_ht=scontent.fmru3-1.fna&oh=00_AfCDA7meYB3f2qUEFSHO8Z4Drxv7xLSBHuPvzZyZHIVNhg&oe=6407B6F1",
  rating: 4.2
)
sakifo = Event.create!(
  name: "Sakifo Music Festival",
  date: "02.06.2023",
  venue: "Saint Pierre ",
  description: "Since 2004, the Sakifo Musik Festival has thrilled festival-goers over 3 days to pop, rock, electro, maloya, etc. rhythms. More than 50 local, national and international artists will be welcomed on the 5 stages of the festival.",
  price_normal: 2000,
  price_vip: 4000,
  address: " Motorway M3, Cote D'Or, St Pierre",
  capacity: 5000,
  image_url: "https://www.monticket.re/storage/4043/affiche-4X3-sakifo-2023.jpg",
  rating: 4.5
)
puts "Events Created!"


puts "Creating users"
kaya = User.create!(
  first_name: "Kaya",
  last_name: "Popise",
  password: "123456",
  email: "kayaman@gmail.com",
  user_type: true,
  image_url: "https://otayo.com/wp-content/uploads/2022/07/Kaya-2.jpg"
)
annega = User.create!(
  first_name: "Annega",
  last_name: " ",
  password: "123456",
  email: "annega@gmail.com",
  user_type: true,
  image_url: "https://otayo.com/wp-content/uploads/2022/07/anne-ga-4.jpg"
)
blakkayo = User.create!(
  first_name: "Blakk",
  last_name: "Ayo",
  password: "123456",
  email: "blakkayo@gmail.com",
  user_type: true,
  image_url: "https://otayo.com/wp-content/uploads/2022/07/blakkayo-1.jpg"
)
rouslan = User.create!(
  first_name: "Rouslan",
  last_name: "Chimeea",
  password: "123456",
  email: "rous@lokal.com",
  user_type: true,
  image_url: "https://otayo.com/wp-content/uploads/2022/07/dj-ash-1.jpg"
)
yov = User.create!(
  first_name: "Yov",
  last_name: "Bosco",
  password: "123456",
  email: "yov@lokal.com",
  user_type: true,
  image_url: "https://otayo.com/wp-content/uploads/2022/07/Emmanuel-Savannah-1.jpg"
)
silvio = User.create!(
  first_name: "Silviooo",
  last_name: "",
  password: "123456",
  email: "silvio@lokal.com",
  user_type: true,
  image_url: "https://otayo.com/wp-content/uploads/2022/07/justice-lecoq-1.jpg"
)
test_user = User.create!(
  first_name: "Dummy",
  last_name: "User",
  password: "123456",
  email: "dummy@lokal.com",
  user_type: true,
  image_url: "https://otayo.com/wp-content/uploads/2022/07/david-jay-1.jpg"
)
puts "Users Created!"



puts "Creating artists"
kaya_artist = Artist.create!(
  name: "Kaya Popise",
  user_id: kaya.id,
  category: "Raggae",
  biography: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
  rating: "4.8",
  hourly_rate: "30000",
  media_link: " ",
  image_url: " ",
  social_media_links: " "
)
annega_artist = Artist.create!(
  name: "Annega ",
  user_id: annega.id,
  category: "Chilled",
  biography: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
  rating: "4.2",
  hourly_rate: "15000",
  media_link: " ",
  image_url: " ",
  social_media_links: " "
)
blakkayo_artist = Artist.create!(
  name: "Blakkayo",
  user_id: blakkayo.id,
  category: "Mizik Lokal",
  biography: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
  rating: "4.8",
  hourly_rate: "30000",
  media_link: " ",
  image_url: " ",
  social_media_links: " "
)
puts "Artists Created!"


puts "Creating Event Artists"
EventArtist.create!(
  artist_id: kaya_artist.id,
  event_id: pure.id
)
EventArtist.create!(
  artist_id: annega_artist.id,
  event_id: moaf.id
)
EventArtist.create!(
  artist_id: blakkayo_artist.id,
  event_id: sakifo.id
)
puts "Events Artists Created!"
