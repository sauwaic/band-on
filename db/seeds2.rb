#9 groups
#2 studio in Copenhagen
#2 studio in Paris
#2 studio in HK

#3 groups in Copenhagen
#2 groups in Paris
#2 groups in HK

#10 slot



# Create Studio

studios = [
{ name:"Vibe Factory Recording Studio", address:"Rentemestervej 52", price: 500 }
{ name:"Black Tornado studio", address:"Refshalevej 209", price: 700 }
{ name:"Delta Lab Aps", address:"Titangade 1", price: 400 }
{ name:"Studio Luna Rossa", address:"24 Rue Primo Lévi, 75013 Paris, France", price: 500 }
{ name:"Studio d'enregistrement paris Montmartre Recording", address:"49 Rue Lepic, 75018 Paris, France", price: 800 }
{ name:"Ak studios", address:"16 Rue St Denis, 75001 Paris, France", price: 900 }
{ name:"Red Sound Recording Studio", address:"
902, Hoi Luen Industrial Centre, 55 Hoi Yuen Rd, Kwun Tong, Hong Kong", price: 800 }
{ name:"This Music Studio", address:"
Chung Hing Commercial Building, 62-63 Connaught Rd Central, Central, Hong Kong", price: 1000 }
{ name:"Music Land", address:"
19 Tung Lo Wan Rd, Causeway Bay, Hong Kong", price: 700 }

]





studios.each do  |studio|
  studio = Studio.new(name:studio)
  if studio.save
    puts "#{studio.name} created"
  else
    puts  "Error #{studio.name} not created"
  end
end


# Create Users

50.times do
 user = User.new(
   email:  Faker::Internet.email,
   password: Faker::Internet.password,
   name:    Faker::Name.name,
   gender: ["male", "female"].sample,
   age:  (18..50).to_a.sample,
   description: Faker::ChuckNorris.fact,
   experience: ["beginner","intermediate","advanced"].sample,
   genre: ["rock", "jazz", "punk", "acoustic", "indie", "hip-hop", "classical", "funk", "reggae", "blues", "metal", "other"].sample
   )
 user.save!
 puts "user: " + user.name
end
# Create slots

 slot.studio =

 { name:"Vibe Factory Recording Studio", address:"Rentemestervej 52", price: 500 }
5.times do
 slot = Slot.new(
   date: Faker::Date.forward(23),
   start_time: Faker::Time.forward(23, :morning),
   end_time: Faker::Time.forward(23, :afternoon),
   taken: false
   )

# Create 14 users for interpreters
#9 random users
#5 from Copenhagen, Speak Danish Sign Language

users = [
  { email:"james.davies@gmail.com", password:"password" }, #american
  { email:"lily.wright@gmail.com", password:"password" }, #english
  { email:"luca.romano@gmail.com", password:"password" }, #italian
  { email:"marie.martin@gmail.com", password:"password" }, #french
  { email:"daniel.kohein@gmail.com", password:"password" }, #israeli
  { email:"sauwai.zhang@gmail.com", password:"password" }, #chinese
  { email:"sebastian.garcia@gmail.com", password:"password" }, #spanish
  { email:"yuki.namajima@gmail.com", password:"password" }, #japanese
  { email:"mathilda.schmidt@gmail.com", password:"password" }, #german
  { email:"jakob.eriksen@gmail.com", password:"password" }, #danish
  { email:"finn.lassen@gmail.com", password:"password" }, #danish
  { email:"kirsten.mikkelsen@gmail.com", password:"password" }, #danish
  { email:"camilla.vestergaard@gmail.com", password:"password" }, #danish
  { email:"mette.olsen@gmail.com", password:"password" }, #danish
]

users.each do |user|
  u = User.new(user)
  if u.save
    puts "User #{user[:email]} was created"
  end
end

# Create 14 interpreters

interpreters = [

{
name: "James",
bio: "A qualified American Sign Language interpreter. I completed the two-year Diploma in Sign Language Interpreting (DipSLI), awarded by Gallaudet University.",
price: 100,
location: "Chicago",
years_of_experience: 4,
overall_performance: 4.5,
friendliness: 4,
language_ability: 4,
punctuality: 5,
professionalism: 5,
photo: nil
},


{
name: "Lily",
bio: "I am a CODA. My parents, brother and sister are all Deaf and use sign language – I’m hearing and can talk but my first language was sign language.",
price: 150,
location: "London",
years_of_experience: 20,
overall_performance: 5,
friendliness: 5,
language_ability: 5,
punctuality: 4.5,
professionalism: 5,
photo: nil
},


{
name: "Luca",
bio: "I provide a translation/communication service between people who are Deaf or hard of hearing and people that are able to hear. Proficient in Italian Sign Language (LIS) as well as Italian and English.",
price: 80,
location: "Milan",
years_of_experience: 2,
overall_performance: 4,
friendliness: 4,
language_ability: 4,
punctuality: 3,
professionalism: 4,
photo: nil
},

{
name: "Marie",
bio: "Staff interpreter for the Deaf at the International School of Lyon. I work primarily in the educational, work-training, and presentational setting.",
price: 120,
location: "Lyon",
years_of_experience: 5,
overall_performance: 4.5,
friendliness: 5,
language_ability: 4,
punctuality: 5,
professionalism: 4,
photo: nil
},

{
name: "Daniel",
bio: "Trained interpreter on emergency medical, mental health and legal setting. Advocated for the rights of Deaf and Hard of Hearing individuals.",
price: 100,
location: "Tel Aviv",
years_of_experience: 2,
overall_performance: 4.5,
friendliness: 5,
language_ability: 4,
punctuality: 4,
professionalism: 5,
photo: nil
},

{
name: "Sauwai",
bio: "Educator of Deaf/Hard of Hearing (D/HH) youth for the past 6 years. Currently teaching D/HH students in Hong Kong. Nationally certified as a Chinese Sign Language interpreter. ",
price: 150,
location: "Hong Kong",
years_of_experience: 6,
overall_performance: 5,
friendliness: 5,
language_ability: 5,
punctuality: 5,
professionalism: 5,
photo: nil
},

{
name: "Sebastian",
bio: "Freelance Spanish Sign Language (LSE) interpreter for the medical field. On call 24/7. I have experienced a range of interpreting from a migraine to surgery.",
price: 150,
location: "Madrid",
years_of_experience: 8,
overall_performance: 4,
friendliness: 4,
language_ability: 5,
punctuality: 4,
professionalism: 4,
photo: nil
},

{
name: "Yuki",
bio: "I am a Japanese Sign Language interpreter (JSL), very passionate about promoting and developing a better community for the Deaf, Hard of Hearing and CODAs (Children of Deaf Adults).",
price: 120,
location: "Tokyo",
years_of_experience: 5,
overall_performance: 4.5,
friendliness: 4,
language_ability: 4,
punctuality: 5,
professionalism: 5,
photo: nil
},


{
name: "Mathilda",
bio: "I am a basic German Sign Language instructor to University students. I introduced Deaf awareness to students as well as hearing staff not involved in the Deaf and Hard of Hearing community.",
price: 80,
location: "Berlin",
years_of_experience: 3,
overall_performance: 4,
friendliness: 4,
language_ability: 4,
punctuality: 4,
professionalism: 4,
photo: nil
},

{
name: "Jakob",
bio: "Currently I teach Danish Sign Language (DTS 1-V), Intro into Deaf Studies classes and am a DTS tutor to students as needed. I have hosted Deaf Community events for students and members and coordinated Deaf Community Field Trips for DTS students.",
price: 150,
location: "Copenhagen",
years_of_experience: 10,
overall_performance: 5,
friendliness: 5,
language_ability: 5,
punctuality: 5,
professionalism: 5,
photo: nil
},

{
name: "Finn",
bio: "I'm a freelance Danish Sign Language / Danish interpreter based in Copenhagen. I work in a variety of settings and have experience of all domains but have built up considerable experience in the field of medical interpreting (incuding sexual health) and child protection / social care.",
price: 100,
location: "Copenhagen",
years_of_experience: 4,
overall_performance: 4.5,
friendliness: 5,
language_ability: 5,
punctuality: 4,
professionalism: 5,
photo: nil
},


{
name: "Kirsten",
bio: "I am an independent, certified Danish Sign Language interpreter and court interpreter. I worked with the Danish Deaf Sports Association for the 2009 Deaflympics in Taipei, Taiwan, as the official interpreter.",
price: 150,
location: "Copenhagen",
years_of_experience: 10,
overall_performance: 4.5,
friendliness: 5,
language_ability: 5,
punctuality: 5,
professionalism: 4,
photo: nil
},

{
name: "Camilla",
bio: "I am a communications consultant for the Danish Deaf Association, an organization that would like to make society more aware of what it means to use Danish Sign Language as a primary means of communication.",
price: 100,
location: "Copenhagen",
years_of_experience: 5,
overall_performance: 4,
friendliness: 4,
language_ability: 4,
punctuality: 4,
professionalism: 4,
photo: nil
},


{
  name: "Mette",
  bio: "Danish Sign Language interpreter primarily for conferences, training sessions, meetings and lectures. Interpreting from French, German, English into Danish as well as interpreting between Danish and Danish Sign Language.",
  price: 120,
  location: "Copenhagen",
  years_of_experience: 8,
  overall_performance: 5,
  friendliness: 5,
  language_ability: 5,
  punctuality: 5,
  professionalism: 5,
  photo: nil
  },
]

User.all.each_with_index do |user, index|
  interpreter = Interpreter.new(interpreters[index])
  interpreter.user = user
  interpreter.remote_photo_url = File.join(Rails.root, "db/seed-images/#{interpreter.name.downcase}.jpg")
  if interpreter.save
    puts "Interpreter #{interpreter.name} was created"
  else
    puts "Error : Interpreter #{interpreter.name} not saved"
  end
end

# Create languages for interpreteres

language_skills =  [

  {
  email:"james.davies@gmail.com",
  languages: ["English", "American Sign Language"]
  },

  {
  email:"lily.wright@gmail.com",
  languages: ["English", "British Sign Language"]
  },


  {
  email:"luca.romano@gmail.com",
  languages: ["Italian", "English", "Italian Sign Language"]
  },

  {
  email:"marie.martin@gmail.com",
  languages: ["French", "French Sign Language"]
  },

  {
  email:"daniel.kohein@gmail.com",
  languages: ["Hebrew", "English", "American Sign Language", "Israeli Sign Language"]
  },

  {
  email:"sauwai.zhang@gmail.com",
  languages: ["English", "Cantonese", "Chinese Sign Language"]
  },

  {
  email:"sebastian.garcia@gmail.com",
  languages: ["Spanish", "French", "Spanish Sign Language"]
  },

  {
  email:"yuki.namajima@gmail.com",
  languages: ["Japanese", "English", "Japanese Sign Language"]
  },

  {
  email:"mathilda.schmidt@gmail.com",
  languages: ["German", "German Sign Language"]
  },


  {
  email:"jakob.eriksen@gmail.com",
  languages: ["Danish", "English", "Danish Sign Language"]
  },

  {
  email:"finn.lassen@gmail.com",
  languages: ["Danish", "Norwegian", "English", "Danish Sign Language"]
  },


  {
  email:"kirsten.mikkelsen@gmail.com",
  languages: ["Danish", "English", "Chinese Mandarin", "Danish Sign Language"]
  },

  {
  email:"camilla.vestergaard@gmail.com",
  languages: ["Danish", "Danish Sign Language"]
  },

  {
  email:"mette.olsen@gmail.com",
  languages: ["Danish", "French", "German", "English", "Danish Sign Language"]
  },

]



# Create languages for interpreteres
language_skills.each do |language_skill|
  interpreter = User.find_by(email:language_skill[:email]).interpreter
  language_skill[:languages].each do |language|
    language_skill = LanguageSkill.new()
    language_skill.owner = interpreter
    language = Language.find_by_name(language)
    language_skill.language = language
    if la
