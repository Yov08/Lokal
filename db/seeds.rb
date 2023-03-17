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
  date: "30.07.2022",
  venue: "Grand Gaube ",
  description: "This 3-day Music & Beach festival will occur on the 7th, 8th, and 9th of August. For the first time in Mauritius, an entire resort is being privatised for a 3-day festival. ",
  price_normal: 2000,
  price_vip: 3000,
  address: "Lux Grand Gaube",
  capacity: 1000,
  image_url: "https://res.cloudinary.com/dqjdq06qv/image/upload/v1676913981/LOKAL/Events_homepage_cq8dwz.jpg",
  rating: 4.9
)
soiree_zulu = Event.create!(
  name: "Soirée with Zulu",
  date: "29.04.2023",
  venue: "Om Art Tamarin",
  description: "To get you in the mood, Zulu ek so tribu offers you a wonderful evening at the Om Art Tamarin on Saturday April 29, 2023. Head west for the Soirée with Zulu event, where this music enthusiast concocts a live gig, ft. Akoustika which promises to be unforgettable.
  Zulu marked his first name in bold in the musical landscape. And for the Evening with Zulu, the emblematic local artist will take the stage of the Om Art Tamarin and will make you vibrate with his emblematic songs, accompanied by his Tribe. He is one of the favorite artists of Mauritians and has touched several generations of fans with his catchy melodies.
  Known for his lyrical talents and his iconic timbre of voice which has won over many since the release of his single 'Gabriella', the artist Zulu promises a very entertaining live concert for all music lovers.
  La Soirée avec Zulu will also welcome the band of the moment, Akoustika, which is slowly but surely becoming known on the local music scene. Mauritian musical group founded by Jonas ROBERT, Akoustika will delight you with a variety of acoustic music on April 29, 2023.
  Nothing can resist the power of good music! Gather your team and join Zulu ek So Tribu and Akoustika during the Soirée with Zulu at Om Art Tamarin, from 7:00 p.m. to 11:00 p.m.!",
  price_normal: 200,
  price_vip: 0,
  address: "Tamarin",
  capacity: 400,
  image_url: "https://res.cloudinary.com/dqjdq06qv/image/upload/v1678433453/LOKAL/Events/Soir%C3%A9e-with-Zulu-Carousel_p35wzp.jpg",
  rating: 4.7,
  start_time: "19:00",
  end_time: "23:00",
  longitude: -20.085627115510015,
  latitude: 57.5206045413392
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
  image_url: "https://res.cloudinary.com/dqjdq06qv/image/upload/v1678258607/LOKAL/Events/moaf-banner_z7vdl9.png",
  rating: 4.2,
  longitude: -20.085627115510015,
  latitude: 57.5206045413392
)
mystik_garden_vi = Event.create!(
  name: "The Mystik Garden VI",
  date: "19.03.2023",
  venue: "Ruins of Balaclava",
  description: "The wait is over. For the next and final edition of the Mystik Festival, Secret Models is taking this last event of the summer of 2023 to a whole new level. A stellar line up of local artists and a selection of artists from the Anjunadeep and mau5trap music labels (Eli & Fur, Massane and Anima), as well as a secret international guest, awaits you at the Maritim Resorts & Spa, Balaclava on 11 March 2023.",
  price_normal: 2000,
  price_vip: 4000,
  address: "Turtle Bay Balaclava, Terre Rouge",
  capacity: 2000,
  image_url: "https://otayo.com/wp-content/uploads/2023/01/mystikgarden6-1.jpg",
  rating: 4.2,
  start_time: "14:00",
  end_time: "00:00",
  longitude: -20.085627115510015,
  latitude: 57.5206045413392
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
  rating: 4.5,
  start_time: "13:00",
  end_time: "22:00",
  longitude: -20.085627115510015,
  latitude: 57.5206045413392
)

luna_night_festival = Event.create!(
  name: "Luna Night Festival",
  date: "21.06.2023",
  venue: "Domaine Les Pailles",
  description: "Get ready for the Luna Night Festival, an electrifying evening of music and dance under the stars. This year's line-up features top local and international artists, including DJ Sash, Eli & Fur, and Massane. Join us on June 21st at Domaine Les Pailles, the perfect natural setting for this unforgettable night.",
  price_normal: 2500,
  price_vip: 5000,
  address: "Domaine Les Pailles, Pailles",
  capacity: 3000,
  image_url: "https://res.cloudinary.com/dqjdq06qv/image/upload/v1678431206/LOKAL/Events/Luna_nigth_festival_vimayw.png",
  rating: 4.5,
  start_time: "17:00",
  end_time: "02:00",
  longitude: -20.085627115510015,
  latitude: 57.5206045413392
)

live_dan_moka = Event.create!(
  name: "Live Dan Moka",
  date: "15.04.2023",
  venue: "Moka",
  description: "Live Dan Moka revient pour une édition spéciale à ne pas manquer. L’événement aura lieu à Moka le 15 avril 2023. Venez profiter d'une soirée avec un line-up de DJ's de renom dont Philippe Thomas, Syndicate et bien d'autres. Cette soirée sera l'occasion de découvrir les derniers talents locaux et internationaux. Réservez dès maintenant vos places pour cette soirée exceptionnelle !",
  price_normal: 1000,
  price_vip: 3000,
  address: "Moka",
  capacity: 1500,
  image_url: "https://res.cloudinary.com/dqjdq06qv/image/upload/v1678431208/LOKAL/Events/live-dan-moka-philippe-thomas-syndicate-4_tdpla6.jpg",
  rating: 4.0,
  start_time: "14:00",
  end_time: "00:00",
  longitude: -20.085627115510015,
  latitude: 57.5206045413392
)

puts "Events Created!"

puts "Creating Tags"
techno = Tag.create!(name: "Techno")
house = Tag.create!(name: "House")
festival = Tag.create!(name: "Festival")
jazz = Tag.create!(name: "Jazz")
concert = Tag.create!(name: "Concert")
rock = Tag.create!(name: "Rock")
puts "Tags Created!"

puts "Creating Event Tags"
mystik_garden_vi.tags << techno
mystik_garden_vi.tags << house
mystik_garden_vi.tags << festival
live_dan_moka.tags << jazz
live_dan_moka.tags << concert
luna_night_festival.tags << techno
luna_night_festival.tags << festival
puts "Event Tags Created!"


puts "Creating users"
kaya = User.create!(
  first_name: "Kaya",
  last_name: "Popise",
  password: "123456",
  email: "kayaman@gmail.com",
  normal_user: false,
  image_url: "https://otayo.com/wp-content/uploads/2022/07/Kaya-1.jpg"
)
annega = User.create!(
  first_name: "Annega",
  last_name: " ",
  password: "123456",
  email: "annega@gmail.com",
  normal_user: false,
  image_url: "https://otayo.com/wp-content/uploads/2022/07/anne-ga-4.jpg"
)
blakkayo = User.create!(
  first_name: "Blakk",
  last_name: "Ayo",
  password: "123456",
  email: "blakkayo@gmail.com",
  normal_user: false,
  image_url: "https://res.cloudinary.com/dqjdq06qv/image/upload/v1678529471/LOKAL/artists/blakkayo_show_mkxzsc.jpg"
)
davidjay = User.create!(
  first_name: "David",
  last_name: "Jay",
  password: "123456",
  email: "davidjay@gmail.com",
  normal_user: false,
  image_url: "https://otayo.com/wp-content/uploads/2022/07/david-jay-1.jpg"
)
rouslan = User.create!(
  first_name: "Rouslan",
  last_name: "Chimeea",
  password: "123456",
  email: "rous@lokal.com",
  normal_user: false,
  image_url: "https://otayo.com/wp-content/uploads/2022/07/dj-ash-1.jpg"
)
yov = User.create!(
  first_name: "Yov",
  last_name: "Bosco",
  password: "123456",
  email: "yov@lokal.com",
  normal_user: false,
  image_url: "https://otayo.com/wp-content/uploads/2022/07/Emmanuel-Savannah-1.jpg"
)
silvio = User.create!(
  first_name: "Silviooo",
  last_name: "",
  password: "123456",
  email: "silvio@lokal.com",
  normal_user: false,
  image_url: "https://otayo.com/wp-content/uploads/2022/07/justice-lecoq-1.jpg"
)
dj_sash = User.create!(
  first_name: "DJ",
  last_name: "Sash",
  password: "123456",
  email: "djsash@lokal.com",
  normal_user: false,
  image_url: "https://res.cloudinary.com/dqjdq06qv/image/upload/v1678614197/LOKAL/artists/dj_sash_azdcus.jpg"
)
eli_fur = User.create!(
  first_name: "Eli",
  last_name: "& Fur",
  password: "123456",
  email: "elinfur@lokal.com",
  normal_user: false,
  image_url: "https://otayo.com/wp-content/uploads/2023/01/Eli-Fur.jpg"
)
massane = User.create!(
  first_name: "Massane",
  last_name: "",
  password: "123456",
  email: "massane@lokal.com",
  normal_user: false,
  image_url: "https://otayo.com/wp-content/uploads/2023/01/massane.jpg"
)
philippe = User.create!(
  first_name: "Philippe",
  last_name: "Thomas",
  password: "123456",
  email: "philippethomas@lokal.com",
  normal_user: false,
  image_url: "https://res.cloudinary.com/dqjdq06qv/image/upload/v1678431268/LOKAL/artists/philippe-thomas_gwqhgv.jpg"
)
zulu = User.create!(
  first_name: "Zulu",
  last_name: "",
  password: "123456",
  email: "zulu@gmail.com",
  normal_user: false,
  image_url: "https://res.cloudinary.com/dqjdq06qv/image/upload/v1678433599/LOKAL/artists/zulu-4_cnordr.jpg"
)
dummy1 = User.create!(
  first_name: "Dummy",
  last_name: "One",
  password: "123456",
  email: "dummy1@gmail.com",
  normal_user: true,
  image_url: "https://res.cloudinary.com/dqjdq06qv/image/upload/v1678613935/LOKAL/users/dummy1_rr7n6f.jpg"
)

dummy2 = User.create!(
  first_name: "Dummy",
  last_name: "Two",
  password: "123456",
  email: "dummy2@gmail.com",
  normal_user: true,
  image_url: "https://res.cloudinary.com/dqjdq06qv/image/upload/v1678613935/LOKAL/users/dummy4_mi6v2c.jpg"
)

dummy3 = User.create!(
  first_name: "Dummy",
  last_name: "Three",
  password: "123456",
  email: "dummy3@gmail.com",
  normal_user: true,
  image_url: "https://res.cloudinary.com/dqjdq06qv/image/upload/v1678613935/LOKAL/users/dummy3_lfc2dj.jpg"
)

dummy4 = User.create!(
  first_name: "Dummy",
  last_name: "Four",
  password: "123456",
  email: "dummy4@gmail.com",
  normal_user: true,
  image_url: "https://res.cloudinary.com/dqjdq06qv/image/upload/v1678613935/LOKAL/users/dummy5_k9q2o0.jpg"
)

dummy5 = User.create!(
  first_name: "Dummy",
  last_name: "Five",
  password: "123456",
  email: "dummy5@gmail.com",
  normal_user: true,
  image_url: "https://res.cloudinary.com/dqjdq06qv/image/upload/v1678613936/LOKAL/users/dummy2_omzlsp.jpg"
)






puts "Creating artists"
zulu_artist = Artist.create!(
  name: "Zulu",
  user_id: zulu.id,
  category: "Blues",
  biography: "Born in 1964, Michel Bavajee earned the stage name, Zulu, due to his darker skin colour compared to his siblings. Zulu also owns a boat which he used as a fisherman. Zulu considers himself as an artist engaged in the difficulties of life and does not hesitate to turn to his songs for subjects that matter to him.
  Zulu’s first musical experience dates back to his teenage years when, at the age of 14 years, he participated in a show interpreting the song ‘Leaving on the Jet Plane’ by John Denver. Zulu then decides to learn how to play the guitar and at the age of 16, he joins the group Gérard Seeta Ramdoo for shows in hotels. Unsatisfied with the salary he was earning, he decided to quit and participated in the Sar Show where all the juries were charmed by his rendition of ‘La Bohème’ by Charles Aznavour.",
  rating: "4.3",
  hourly_rate: "15000",
  media_link: "https://www.youtube.com/watch?v=EUFpT8RyP70",
  image_url: "https://res.cloudinary.com/dqjdq06qv/image/upload/v1678433599/LOKAL/artists/zulu-4_cnordr.jpg",
  social_media_links: "https://www.facebook.com/ZuluBavajee/",
  youtube: "https://www.youtube.com/embed/EUFpT8RyP70",
  spotify: "https://open.spotify.com/embed/artist/0FJi3fSLGLtquZCfeC55Tm?utm_source=generator&theme=0",
  deezer: "https://deezer.page.link/S1gJBCPMZRL5pex67",
  instagram: "https://www.instagram.com/"
)

eli_fur_artist = Artist.create!(
  name: "Eli",
  user_id: eli_fur.id,
  category: "House Techno",
  biography: "Eli & Fur ont une passion inébranlable pour la production, l’écriture et l’interprétation. Leur flair pour la création d’hymnes sombres et émotifs, a placé ce duo londonien au premier plan de la scène house et techno internationale. Leur chimie sur les platines est enivrante et elles ont séduit les dancefloors de LA à Berlin et ont honoré les grandes scènes de festivals tels que Coachella, Tomorrowland et Creamfields, ainsi qu’apparaître sur Boiler Room et BBC Radio 1’s Essential Mix. Leur esthétique sonore marie une ambiance mystérieuse et énigmatique avec des voix évocatrices, des synthés en cascade et des lignes de basse ondulantes – un mélange enivrant qui crée une dépendance et un envoûtement. Qu’il s’agisse d’histoires de clubs et de soirées, d’amour, de vie, de rires et de rébellion, leurs productions ont captivé l’imagination de leurs fans dans le monde entier.",
  rating: "4.8",
  hourly_rate: "30000",
  media_link: "https://www.youtube.com/watch?v=d_1qExe2PWk&ab_channel=Eli%26Fur",
  image_url: "https://otayo.com/wp-content/uploads/2023/01/Eli-Fur.jpg",
  social_media_links: "https://www.facebook.com/eliandfur",
  youtube: "https://www.youtube.com/embed/Lgr2WMjvlM8",
  spotify: "https://open.spotify.com/embed/artist/5CkVLGKUJkIc1pmSk10QP4?utm_source=generator&theme=0",
  deezer: "https://deezer.page.link/S1gJBCPMZRL5pex67",
  instagram: "https://www.instagram.com/eliandfur/"
)
massane_artist = Artist.create!(
  name: "Massane",
  user_id: massane.id,
  category: "House Techno",
  biography: "Massane is a young producer and DJ who has quickly gained a reputation for his emotive and melodic sound. Drawing from his influences in classical music and contemporary art, his productions are filled with intricate melodies, lush soundscapes and driving basslines. His debut EP 'Another Dawn' on Anjunadeep was a critical and commercial success, receiving support from industry heavyweights such as Lane 8, Above & Beyond and Joris Voorn. His music has also been featured on major playlists such as 'NMF' and 'mint' on Spotify. With a rapidly growing fanbase and a busy touring schedule, Massane is quickly establishing himself as a rising star in the electronic music scene.",
  rating: "4.5",
  hourly_rate: "25000",
  media_link: "https://www.youtube.com/watch?v=gf4s4lGTLBc&ab_channel=Massane",
  image_url: "https://otayo.com/wp-content/uploads/2023/01/massane.jpg",
  social_media_links: "https://www.facebook.com/massanemusic",
  youtube: "https://www.youtube.com/embed/BZm37aBzEWE",
  spotify: "https://open.spotify.com/embed/artist/0cjvrTtv350Ls87eGY80iz?utm_source=generator&theme=0",
  deezer: "https://deezer.page.link/WUCbwK9xQ2hLfmz79",
  instagram: "https://www.instagram.com/massanemusic/"
)
dj_sash_artist = Artist.create!(
  name: "DJ Sash",
  user_id: dj_sash.id,
  category: "Trance",
  biography: "DJ Sash is a German DJ and record producer who rose to fame in the 1990s with his hit singles 'Encore Une Fois' and 'Ecuador'. With his infectious beats and high-energy performances, he has become one of the most sought-after DJs in the world. He has played at some of the biggest music festivals and events, including Tomorrowland, Creamfields, and Ultra Music Festival. His music is a fusion of trance, techno, and house, and his sets are always guaranteed to get the crowd moving.",
  rating: "4.7",
  hourly_rate: "35000",
  media_link: "https://www.youtube.com/watch?v=baKMg1W-LK8&ab_channel=DJSashVEVO",
  image_url: "https://res.cloudinary.com/dqjdq06qv/image/upload/v1678614197/LOKAL/artists/dj_sash_azdcus.jpg",
  social_media_links: "https://www.facebook.com/djsashgoldcoast",
  youtube: "https://www.youtube.com/embed/LelCAYSlF1c",
  spotify: "https://open.spotify.com/embed/playlist/2pUsivSHJcMAEDSn0sOdwW?utm_source=generator&theme=0",
  deezer: "https://deezer.page.link/WUCbwK9xQ2hLfmz79",
  instagram: "https://www.instagram.com/massanemusic/"
)
kaya_artist = Artist.create!(
  name: "Kaya",
  user_id: kaya.id,
  category: "Seggae",
  biography: "To the world, he is known as Kaya but his real name is Joseph Réginald Topize. He was born on the 10th of August in 1960 in Roche Bois, Port Louis. He came from a family of five children. His father who was a fisherman was not able to sustain his needs and help him complete his studies thus he was under the wings of his uncle. Kaya’s childhood was not the best one. He had to find himself small jobs at the age of 8 years as he was a victim of racism and also bullied for being a Mauritian Creole.",
  rating: "4.8",
  hourly_rate: "30000",
  media_link: " ",
  image_url: "https://otayo.com/wp-content/uploads/2022/07/Kaya-1.jpg",
  social_media_links: "https://www.facebook.com/profile.php?id=100057452267838",
  youtube: "https://www.youtube.com/embed/glo_--yEOGM",
  spotify: "https://open.spotify.com/embed/artist/5VZirLPBLkdsVsDHcVEWxt?utm_source=generator&theme=0"
)
annega_artist = Artist.create!(
  name: "Annega",
  user_id: annega.id,
  category: "Chilled",
  biography: "Annega is a Mauritian pop-artist. She released her debut album “Remember Me” in October 2021.",
  rating: "4.2",
  hourly_rate: "15000",
  media_link: " ",
  image_url: "https://otayo.com/wp-content/uploads/2022/07/anne-ga-4.jpg",
  social_media_links: "https://www.facebook.com/Annegaofficial",
  youtube: "https://www.youtube.com/embed/mmopE96_T4Y",
  spotify: "https://open.spotify.com/embed/artist/4raFB7ovPksXVgfeYt7Xg4?utm_source=generator&theme=0"
)
blakkayo_artist = Artist.create!(
  name: "Blakkayo",
  user_id: blakkayo.id,
  category: "Mizik Lokal",
  biography: "His real name is Jean Clario Gateaux. Blakkayo lives at Goodlands, in the north of Mauritius. He was born in 1978. In the 1990s, he performed as a dancer which led him to love music, specifically reggae music. While listening to Kaya’s seggae, a fusion of Mauritian sega and reggae, made him realise that he can use music to share his belief and help people see who and what are the reals. He even wrote his own lyrics which led to freestyle music.",
  rating: "4.8",
  hourly_rate: "30000",
  media_link: " ",
  image_url: "https://res.cloudinary.com/dqjdq06qv/image/upload/v1678529471/LOKAL/artists/blakkayo_show_mkxzsc.jpg",
  social_media_links: "https://www.facebook.com/orizinalblakkayo",
  youtube: "https://www.youtube.com/embed/O4YAvUPp9MU",
  spotify: "https://open.spotify.com/embed/artist/3DoTxN5SX13QpC2mrjko2O?utm_source=generator&theme=0"
)
davidjay_artist = Artist.create!(
  name: "David Jay",
  user_id: davidjay.id,
  category: "DJ",
  biography: "David Jay is a music alchemist, the one who blends all types of music. He is very well known for mastering sound like a pro. He started mixing in 1996 at the age of 17 for the first time. For David, music is a way for him to express his feelings and whichever mood he is in. David Jay is mostly in Deep House music. He can also mix a diverse variety of tracks, from 80’s classics to more contemporary styles. David Jay and his music are alike. He has performed in many international events for the Ministry of Sound, Hedkandi, Cream, Global Underground and Social Buzz Music Festival. He also performed in nightclubs internationally such Ministry of Sound, London, Macumba and Bora Bora in France, Spain, Sri Lanka, Kenya and South Africa. David Jay has been very lucky in his profession as he has been able to share his love for deejaying with DJs such as David Guetta, Tiesto, Paul Oakenfold, Nick Bridges, Dave Seaman, Nick Warren, David Vendetta, Global DJs and Martin Solveig. David is now exploring the world where he is trying to mix all the experience he gathered throughout his growth, to make himself a better DJ and also to make people love what they are experiencing while listening to his music.",
  rating: "4.6",
  hourly_rate: "20000",
  media_link: " ",
  image_url: "https://otayo.com/wp-content/uploads/2022/07/david-jay-1.jpg",
  social_media_links: "https://www.facebook.com/davidjaymusic",
  youtube: "https://www.youtube.com/embed/0XQ3lZeeb54",
  spotify: "https://open.spotify.com/embed/artist/3GcNaoDb5ZGePZXfUd3gIU?utm_source=generator&theme=0"
)

puts "Artists Created!"


puts "Creating Event Artists"
EventArtist.create!(
  artist_id: eli_fur_artist.id,
  event_id: mystik_garden_vi.id
)
EventArtist.create!(
  artist_id: massane_artist.id,
  event_id: mystik_garden_vi.id
)
EventArtist.create!(
  artist_id: eli_fur_artist.id,
  event_id: luna_night_festival.id
)
EventArtist.create!(
  artist_id: massane_artist.id,
  event_id: luna_night_festival.id
)
EventArtist.create!(
  artist_id: dj_sash_artist.id,
  event_id: luna_night_festival.id
)
EventArtist.create!(
  artist_id: kaya_artist.id,
  event_id: pure.id
)
EventArtist.create!(
  artist_id: kaya_artist.id,
  event_id: moaf.id
)
EventArtist.create!(
  artist_id: annega_artist.id,
  event_id: moaf.id
)
EventArtist.create!(
  artist_id: blakkayo_artist.id,
  event_id: sakifo.id
)
EventArtist.create!(
  artist_id: davidjay_artist.id,
  event_id: pure.id
)
EventArtist.create!(
  artist_id: zulu_artist.id,
  event_id: soiree_zulu.id
)
puts "Events Artists Created!"


puts "Creating Bookings"
# Booking.create!(
#   event_id: pure.id,
#   user_id: rouslan.id,
#   pax: 1,
#   booking_type: "",
#   total_price: 2000,
#   pax_vip: 0
# )
Booking.create!(
  event_id: mystik_garden_vi.id,
  user_id: rouslan.id,
  pax: 0,
  booking_type: "",
  total_price: 8000,
  pax_vip: 2
)
Booking.create!(
  event_id: soiree_zulu.id,
  user_id: rouslan.id,
  pax: 4,
  booking_type: "",
  total_price: 800,
  pax_vip: 0
)
Booking.create!(
  event_id: pure.id,
  user_id: rouslan.id,
  pax: 1,
  booking_type: "",
  total_price: 2000,
  pax_vip: 0
)
Booking.create!(
  event_id: pure.id,
  user_id: yov.id,
  pax: 1,
  booking_type: "",
  total_price: 2000,
  pax_vip: 0
)
Booking.create!(
  event_id: soiree_zulu.id,
  user_id: yov.id,
  pax: 4,
  booking_type: "",
  total_price: 800,
  pax_vip: 0
)

puts "Bookings Created!"


puts "Creating Likes"
Like.create!(
  event_id: luna_night_festival.id,
  user_id: dummy1.id
)
Like.create!(
  event_id: luna_night_festival.id,
  user_id: dummy2.id
)
Like.create!(
  event_id: luna_night_festival.id,
  user_id: dummy3.id
)
Like.create!(
  event_id: luna_night_festival.id,
  user_id: dummy4.id
)
Like.create!(
  event_id: luna_night_festival.id,
  user_id: dummy5.id
)
Like.create!(
  event_id: soiree_zulu.id,
  user_id: dummy4.id
)
Like.create!(
  event_id: soiree_zulu.id,
  user_id: dummy2.id
)
Like.create!(
  event_id: soiree_zulu.id,
  user_id: dummy3.id
)
Like.create!(
  event_id: soiree_zulu.id,
  user_id: dummy1.id
)
Like.create!(
  event_id: mystik_garden_vi.id,
  user_id: dummy1.id
)
Like.create!(
  event_id: mystik_garden_vi.id,
  user_id: dummy2.id
)
Like.create!(
  event_id: mystik_garden_vi.id,
  user_id: dummy3.id
)
Like.create!(
  event_id: mystik_garden_vi.id,
  user_id: dummy4.id
)
Like.create!(
  event_id: mystik_garden_vi.id,
  user_id: dummy5.id
)
puts "Likes Created!"

# kaya = User.create!(
#   annega = User.create!(
#   blakkayo = User.create!(
#   davidjay = User.create!(
#   yov = User.create!(
#   dj_sash = User.create!(
#   eli_fur = User.create!(
#   massane = User.create!(
#   philippe = User.create!(
#   zulu = User.create!(
