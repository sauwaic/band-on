# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Group.destroy_all
Slot.destroy_all
Instrument.destroy_all
Studio.destroy_all
Message.destroy_all

%w(guitar bass-guitar piano drum-kit voice trumpet saxophone flute violin other).each do |instrument|
 i = Instrument.create(name: instrument)
 puts "instrument " + i.name
end

studio_slots = [
  {
    studio: {
      name:"Vibe Factory Recording Studio",
      address:"Rentemestervej 52",
      price: 500
    },
    slot: {
      date: Date.new(2016,5,3),
      start_time: Time.new(2016, 10, 31, 2, 2, 2, "+02:00"),
      end_time: Time.new(2016, 10, 31, 2, 2, 2, "+03:00"),
    },
    urls:  [
  'http://vibefactory.dk/wp-content/uploads/2013/06/Control1-620x413.jpg',
  'http://vibefactory.dk/wp-content/uploads/2013/06/Studio-620x413.jpg',
  'http://vibefactory.dk/wp-content/uploads/2013/06/Studio2-620x386.jpg'
    ]
  },

  {
    studio: {
      name:"Black Tornado studio",
      address:"Refshalevej 209",
      price: 700
    },
    slot: {
      date: Date.new(2016,2,6),
      start_time: Time.new(2016, 10, 31, 2, 2, 2, "+02:00"),
      end_time: Time.new(2016, 10, 31, 2, 2, 2, "+03:00")
    },
    urls:  [
  'http://www.tornadostudios.dk/pics/gear/recordingarea116.jpg',
  'http://www.tornadostudios.dk/pics/studio/Black%20tornado/vocalroom.jpg'
    ]
  },

  {
    studio: {
      name:"Delta Lab Aps",
      address:"Titangade 1",
      price: 400
    },
    slot: {
      date: Date.new(2016,4,8),
      start_time: Time.new(2016, 10, 31, 2, 2, 2, "+04:00"),
      end_time: Time.new(2016, 10, 31, 2, 2, 2, "+05:00")
    },
    urls:  [
  'http://www.soundcheck.dk/uploads/artikler/501/files/ctrl-room-overall.jpg',
  'http://www.soundcheck.dk/uploads/artikler/501/files/indspillerrum.jpg',
  'http://www.soundcheck.dk/uploads/artikler/501/files/keys.jpg'
    ]
  },

  {
    studio: {
      name:"Studio Luna Rossa",
      address:"24 Rue Primo Lévi, 75013 Paris, France",
      price: 400
    },
    slot: {
      date: Date.new(2016,5,10),
      start_time: Time.new(2016, 10, 31, 2, 2, 2, "+06:00"),
      end_time: Time.new(2016, 10, 31, 2, 2, 2, "+07:00")
    },
    urls:  [
  'http://www.studiolunarossa.com/Luna_Rossa-Studio_de_repetition_a_Paris/Studio_ACH4712_files/LunaRossaStudio4.jpg',
  'http://www.studiolunarossa.com/Luna_Rossa-Studio_de_repetition_a_Paris/Studio_ACH4712_files/LunaRossaStudio7.jpg',
'http://www.studiolunarossa.com/Luna_Rossa-Studio_de_repetition_a_Paris/Studio_ACH4712_files/LunaRossaStudio12%20bis.jpg'
    ]
  },

 {
    studio: {
      name:"Studio d'enregistrement paris Montmartre Recording",
      address:"49 Rue Lepic, 75018 Paris, France",
      price: 850
    },
    slot: {
      date: Date.new(2016,6,11),
      start_time: Time.new(2016, 10, 31, 2, 2, 2, "+01:00"),
      end_time: Time.new(2016, 10, 31, 2, 2, 2, "+02:00")
    },
    urls:  [
  'http://www.montmartrerecording.com/wp-content/uploads/2015/04/studio-enregistrement-cabine-paris18.jpg',
  'http://www.montmartrerecording.com/wp-content/uploads/2015/04/salon-detente-canape-MR.jpg',
  'http://www.montmartrerecording.com/wp-content/uploads/2015/04/micros-prises-casques-5.1.jpg'
    ]
  },

   {
    studio: {
      name:"Ak studios",
      address:"16 Rue St Denis, 75001 Paris, France",
      price: 550
    },
    slot: {
      date: Date.new(2016,1,2),
      start_time: Time.new(2016, 10, 31, 2, 2, 2, "+02:00"),
      end_time: Time.new(2016, 10, 31, 2, 2, 2, "+02:30")
    },
    urls:  [
  'https://s3-media1.fl.yelpcdn.com/bphoto/7Rtwq3tr3zGTEiNLUb0wpQ/o.jpg',
  'https://s3-media2.fl.yelpcdn.com/bphoto/FnL8HaQkg8_anYMQMcD_1Q/o.jpg',
  'https://s3-media2.fl.yelpcdn.com/bphoto/aOdO0NthZCKgOfdGM_tArg/o.jpg'
    ]
  },

    {
    studio: {
      name:"Red Sound Recording Studio",
      address:"902, Hoi Luen Industrial Centre, 55 Hoi Yuen Rd, Kwun Tong, Hong Kong",
      price: 800
    },
    slot: {
      date: Date.new(2016,1,5),
      start_time: Time.new(2016, 10, 31, 2, 2, 2, "+02:00"),
      end_time: Time.new(2016, 10, 31, 2, 2, 2, "+02:30")
    },
    urls:  [
  'http://www.red-sound.com/lightbox/gallery_files/vlb_images1/1.jpg',
  'http://www.red-sound.com/lightbox/gallery_files/vlb_images1/8.jpg',
  'http://www.red-sound.com/lightbox/gallery_files/vlb_images1/29.jpg'
    ]
  },

   {
    studio: {
      name:"This Music Studio",
      address:"Chung Hing Commercial Building, 62-63 Connaught Rd Central, Central, Hong Kong",
      price: 950
    },
    slot: {
      date: Date.new(2016,5,8),
      start_time: Time.new(2016, 10, 31, 2, 2, 2, "+06:00"),
      end_time: Time.new(2016, 10, 31, 2, 2, 2, "+07:30")
    },
    urls:  [
  'https://scontent-ams3-1.xx.fbcdn.net/t31.0-8/194581_210376028977199_6288178_o.jpg',
  'https://scontent-ams3-1.xx.fbcdn.net/v/t1.0-9/12065481_1157509870930472_3824917962611544511_n.jpg?oh=74f6da8943128eeb8f11f4efce4f5244&oe=58B4939A',
  'https://scontent-ams3-1.xx.fbcdn.net/t31.0-8/1492715_772119356136194_2133312241_o.jpg'
    ]
  },

  {
    studio: {
      name:"Music Land",
      address:"19 Tung Lo Wan Rd, Causeway Bay, Hong Kong",
      price: 650
    },
    slot: {
      date: Date.new(2016,7,11),
      start_time: Time.new(2016, 10, 31, 2, 2, 2, "+00:00"),
      end_time: Time.new(2016, 10, 31, 2, 2, 2, "+01:30")
    },
    urls:  [
  'https://rob852.files.wordpress.com/2013/07/dsc_0274.jpg',
  'https://static.groupon.hk/05/54/1318602145405.jpg',
  'https://static.groupon.hk/81/55/1318602145581.jpg'
    ]
  },
]


studio_slots.each do  |studio_slot|
  studio = Studio.new(studio_slot[:studio])
  slot = Slot.new(studio_slot[:slot])
  slot.studio = studio
  if studio.save
    studio.photo_urls = studio_slot[:urls]
    puts "#{studio.name} created"
  else
    puts  "Error #{studio.name} not created"
  end
  if slot.save
    puts "#{slot.date} created"
  else
    puts  "Error #{slot.date} not created"
  end
end


users = [

{
      name:"Tim",
      email:"Tim.hersby@gmail.com",
      password: "password",
      gender: "male",
      age: 25,
      description:"Young musician, involved in several rock bands, looking for a cool band to experiment new kind of music",
      experience: "beginner",
      genre: "rock",
    },

{
      name:"Chloe",
      email:"Chloe.mastoni@gmail.com",
      password: "password",
      gender: "female",
      age: 23,
      description:"6 years playing the bass-guitar, willing to integrate a funk band in the States",
      experience: "intermediate",
      genre: "funk",
    },

{
      name:"Pedro",
      email:"pedrolinto@gmail.com",
      password: "password",
      gender: "male",
      age: 33,
      description:"Drummer in different band for more than 10 years, I love rock'n'roll music from the 80's and the 70's",
      experience: "advanced",
      genre: "rock",
    },

{
      name:"Paul",
      email:"pauldisco@gmail.com",
      password: "password",
      gender: "male",
      age: 24,
      description:"Guitarist on both electric and acustic guitar, been playing with friends for several years, now looking for a cool band to produce some good music",
      experience: "advanced",
      genre: "rock",
    },

{
      name:"Alexia",
      email:"alexia@yahoo.com",
      password: "password",
      gender: "female",
      age: 29,
      description:"I play with a Microkorg, synthetizer, voicoder, willing to create some cool atmosphere for the future band i will play with",
      experience: "intermediate",
      genre: "indie",
    },

{
      name:"Taylor",
      email:"taylorsing@free.com",
      password: "password",
      gender: "female",
      age: 19,
      description:"I love to sing under the shower, and listen to great singers like Melodie Gardot, Adele and Whitney Houston, I want to use my voice in a band",
      experience: "intermediate",
      genre: "jazz",
    },

{
      name:"William",
      email:"william.grim@gmail.com",
      password: "password",
      gender: "male",
      age: 36,
      description:"Have been playing the trumpet and the saxophone for 5 years now, willing to integrate a jazz/funk band in Copenhagen",
      experience: "intermediate",
      genre: "jazz",
    },

{
      name:"Louise",
      email:"louise_alco@gmail.com",
      password: "password",
      gender: "female",
      age: 34,
      description:"Talented pianist, willing to integrate a cool band, available to play two times a week.",
      experience: "advanced",
      genre: "classical",
    },

{
      name:"Oliver",
      email:"oliver.jdk@gmail.com",
      password: "password",
      gender: "male",
      age: 27,
      description:"Guitarist in a metal band for 2 years, now looking for a new band, Metal or hard-rock",
      experience: "beginner",
      genre: "metal",
    },

{
      name:"Jamie",
      email:"jamierock.on@gmail.com",
      password: "password",
      gender: "male",
      age: 24,
      description:"Guitarist in a rock band for 1 years, really into new indie rock band like Tame Impala or Moby",
      experience: "beginner",
      genre: "rock",
    },

{
      name:"Emma",
      email:"emma.daji@gmail.com",
      password: "password",
      gender: "female",
      age: 31,
      description:"Violin player. 6 years of conservatory in Vienna, looking for a classical group to play some relaxing classical music",
      experience: "advanced",
      genre: "classic",
    },

{
      name:"Arthur",
      email:"arthur.piot@gmail.com",
      password: "password",
      gender: "male",
      age: 23,
      description:"Playing the drum for ten years now, recently quit my old band because of discord on the music we wanted to play, now looking for an easy going band to play some cool stuff",
      experience: "intermediate",
      genre: "other",
    },

{
      name:"Eduardo",
      email:"eduardo.lamercantia@gmail.com",
      password: "password",
      gender: "male",
      age: 21,
      description:"Bass-guitar and guitar player, already played in 3 different bands, looking to have fun with other musicians",
      experience: "advanced",
      genre: "reggae",
    },
]


users.each do  |user|
  user = User.new(user)
  if user.save
    puts "#{user.name} created"
  else
    puts  "Error #{user.name} not created"
  end
end

groups = [

  {
    name: "Redo-it",
    number_of_players: 5,
    description: "I created this band to redo a lot of classics from the 80's and the 70's.",
    genre: "rock",
    level: "intermediate",
    },

  {
    name: "Ascent Past",
    number_of_players: 5,
    description: "this band is mean to have some fun between us and just create our one composition or improvise on some funky music.",
    genre: "funk",
    level: "beginner",
    },

  {
    name: "Enter the drop",
    number_of_players: 6,
    description: "We want to produce live music at festivals and concerts, come and join us to rock the world. We are looking for some musicians with experience.",
    genre: "indie",
    level: "advanced",
    },

  {
    name: "French Fish",
    number_of_players: 4,
    description: "Just a band to get our nerve down, come with us to play some heavy-metal as well as some hard-rock.",
    genre: "metal",
    level: "intermediate",
    },

  {
    name: "Jazz Radiation",
    number_of_players: 6,
    description: "Miles Davis is your new god if you want to be part of this group, just kidding, we want to get to cool results and play in some cool jazz club.",
    genre: "jazz",
    level: "advanced",
    },

  {
    name: "Locomotive Of The Jazz Breakdown",
    number_of_players: 6,
    description: "Hey guys, if you know a bit about music and you want to improve your skills in Jazz, this group is made for you, we will go step by step on some Jazz songs.",
    genre: "jazz",
    level: "beginner",
  },

  {
    name: "Sphere",
    number_of_players: 2,
    description: "Hey guys, I'm looking for a beat-maker to create some cool hip-hop beats, I would like to play some guitar over eat and record.",
    genre: "hip-hop",
    level: "intermediate",
    },

  {
    name: "Monkey dream",
    number_of_players: 4,
    description: "Rock and reggae is the main focus of this group, we want to focus on easy going rythmics with tempo around 90.",
    genre: "reggae",
    level: "intermediate"
    },

  {
    name: "Rocket in a pocket",
    number_of_players: 5,
    description: "Hello, I'm willing to play some of the songs I wrote with a friend, need advanced musicians to go over themand try to improve it.",
    genre: "rock",
    level: "advanced",
    },

]

slots = Slot.all

groups.each_with_index do  |group, index|
  group = Group.new(group)
  group.slot = slots[index]
  if group.save
    puts "#{group.name} created"
  else
    puts  "Error #{group.name} not created"
  end

  member_1 = GroupUser.new(group: group, instrument: Instrument.all.sample, user: User.all.sample)
    if member_1.save
    puts "GroupUser id: #{member_1.id} created"
  else
    puts  "Error GroupUser id: #{member_1.id} not created"
  end
  group.admin = member_1.user
  group.save

    member_2 = GroupUser.new(group: group, instrument: Instrument.all.sample, user: User.all.reject{|user| member_1.user == user}.sample)
    if member_2.save
    puts "GroupUser id: #{member_2.id} created"
  else
    puts  "Error GroupUser id: #{member_2.id} not created"
  end

end



