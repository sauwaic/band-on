# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

User.destroy_all
Group.destroy_all
Instrument.destroy_all
Studio.destroy_all
Slot.destroy_all

%w(guitar bass-guitar piano drum-kit voice trumpet saxophone flute violin other).each do |instrument|
 i = Instrument.create(name: instrument)
 puts "instrument " + i.name
end

3.times do
 studio = Studio.new(
   name: Faker::Name.title,
   address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
   price: [500, 750, 1000, 1250].sample

   )
 studio.save!
 puts "studio: " + studio.name
end

30.times do
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

5.times do
 slot = Slot.new(
   date: Faker::Date.forward(23),
   start_time: Faker::Time.forward(23, :morning),
   end_time: Faker::Time.forward(23, :afternoon),
   taken: false
   )
 slot.studio = Studio.first
 slot.save!
 puts "slot: " + slot.id.to_s
   group = Group.new(
   name: Faker::Name.title,
   number_of_players: (2..6).to_a.sample,
   description: Faker::Hipster.sentences,
   genre: ["rock", "jazz", "punk", "acoustic", "indie", "hip-hop", "classical", "funk", "reggae", "blues", "metal", "other"].sample,
   level: ["beginner","intermediate","advanced"].sample
   )
 slot.taken = true
 slot.save!
 group.admin = User.all.sample
 group.slot = slot
 group.save!
 puts "group: " + group.name
end
