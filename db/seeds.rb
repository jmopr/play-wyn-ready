# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Game.create(sport: "Basketball", location: "Florida", time: "9:00PM")
Game.create(sport: "Baseball", location: "Florida", time: "9:00PM")
Game.create(sport: "Soccer", location: "Florida", time: "9:00PM")
Game.create(sport: "Football", location: "Florida", time: "9:00PM")
Game.create(sport: "Lacrosse", location: "Florida", time: "9:00PM")
Game.create(sport: "Hockey", location: "Florida", time: "9:00PM")
Game.create(sport: "Beach Volleyball", location: "Florida", time: "9:00PM")
Game.create(sport: "Volleyball", location: "Florida", time: "9:00PM")
Game.create(sport: "Golf", location: "Florida", time: "9:00PM")
Game.create(sport: "Softball", location: "Florida", time: "9:00PM")
Game.create(sport: "Tennis", location: "Florida", time: "9:00PM")

User.create(name: "Michael Hart", email: "example@railstutorial.org", location: "Home", password: "foobar", password_confirmation: "foobar")
