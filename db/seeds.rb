# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Game.create(sport: "Basketball", description: "3v3 Pick up", address: "Florida", time: "9:00PM")
Game.create(sport: "Baseball", description: "Need 4 for a game", address: "California", time: "9:00PM")
Game.create(sport: "Soccer", description: "Trying to organize a full field game", address: "Atlanta", time: "9:00PM")
Game.create(sport: "Football", description: "Flag football need 6", address: "Cleveland", time: "9:00PM")
Game.create(sport: "Lacrosse", description: "5 on 5 box. Need subs ")#, location: "Florida", time: "9:00PM")
Game.create(sport: "Hockey", description: "Nedd subs for roller")#, location: "Florida", time: "9:00PM")
Game.create(sport: "Beach Volleyball", description: "Looking to start a game hmu")#, location: "Florida", time: "9:00PM")
Game.create(sport: "Volleyball", description: "2 needed")#, location: "Florida", time: "9:00PM")
Game.create(sport: "Golf", description: "Looking for 4th")#, location: "Florida", time: "9:00PM")
Game.create(sport: "Softball", description: "Need players")#, location: "Florida", time: "9:00PM")
Game.create(sport: "Tennis", description: "Anyone want to play")#, location: "Florida", time: "9:00PM")

User.create(name: "Juan Ortiz", email: "jmopr83@gmail.com", address: "7801 NE 4th Ct", password: "password", password_confirmation: "password", admin: true)



25.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password,
               address: "Puerto Rico")
end


Chat.create(comment: "Today's game was great.")
Chat.create(comment: "Did you guys see the top plays today?")
Chat.create(comment: "You guys were amazing!!!.")
