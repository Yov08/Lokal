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
  image_url: "https://scontent.fmru7-1.fna.fbcdn.net/v/t39.30808-6/325892634_715209850069089_4637343665437270031_n.jpg?stp=dst-jpg_p180x540&_nc_cat=108&ccb=1-7&_nc_sid=8631f5&_nc_ohc=bKEdZ4N5EoMAX_sDuyv&_nc_ht=scontent.fmru7-1.fna&oh=00_AfCa1VgkuOjdOPBxrN25HaEWjELVal52nZBtv3cTdcBv3A&oe=63FB02EA"
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
  name: "Jean Clario Gateaux",
  user_id: 3,
  category: "Reggae",
  biography: "Blakkayo lives at Goodlands, in the north of Mauritius. He was born in 1978. In the 1990s, he performed as a dancer which led him to love music, specifically reggae music. While listening to Kaya’s seggae, a fusion of Mauritian sega and reggae, made him realise that he can use music to share his belief and help people see who and what are the reals. He even wrote his own lyrics which led to freestyle music.",
  rating: 4.8,
  hourly_rate: 300,
  media_link: "https://otayo.com/en/artists/blakkayo/",
  image_url: "https://scontent.fmru3-1.fna.fbcdn.net/v/t1.6435-9/162465982_294918178661000_4541438307956873517_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=e7RNbcwFaXQAX_0DCxs&_nc_ht=scontent.fmru3-1.fna&oh=00_AfCV9l-1fW62SXuLAGI29Otfclv5PeCTEHh_X5q6UzICLQ&oe=64259923",
  social_media_links: "https://www.facebook.com/orizinalblakkayo/"
)
Artist.create!(
  name: "Anne Gaëlle Bourquin",
  user_id: 3,
  category: "pop",
  biography: "Anne Gaëlle Bourquin, most commonly known as Anne Ga amongst the Mauritians. She started out on the stage of Timambo at the age of six. Her parents enrolled her in the conservatory where she learned classical piano and also joined the children’s choir.",
  rating: 5.8,
  hourly_rate: 1000,
  media_link: "https://annega.mu/",
  image_url: "https://otayo.com/wp-content/uploads/2022/07/anne-ga-4.jpg",
  social_media_links: "https://www.facebook.com/Annegaofficial/"
)
Artist.create!(
  name: "Hans Nayna",
  user_id: 3,
  category: "Music for the Soul",
  biography: "Hans Nayna is a Mauritian singer, songwriter and a guitarist inspired by many international artists such as Sia, Coldplay, Adele. He writes songs that are filled with enotions. His devotion for music and writing came to him after his high school, where he grabbed a pen and started composing a song and added music to it using a guitar. He has recently released the song 'Music for the Soul'.",
  rating: 5.0,
  hourly_rate: 600,
  media_link: "https://ee.linkedin.com/in/hansnayna",
  image_url: "https://otayo.com/wp-content/uploads/2022/07/hans-nayna-1.jpg",
  social_media_links: "https://scontent.fmru3-1.fna.fbcdn.net/v/t1.6435-9/115824069_2777886295769681_7249292576166010466_n.jpg?stp=cp0_dst-jpg_e15_q65_s403x403&_nc_cat=107&ccb=1-7&_nc_sid=7aed08&_nc_ohc=5z9b7xiutr8AX_jPulB&_nc_ht=scontent.fmru3-1.fna&oh=00_AfCx4I1yIkToFtWGXuv--7OR--4SYaF8xka-BiknkGKZ8w&oe=6425AEE0"
)
puts "Finished!"
