# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)



require "open-uri"

puts "Cleaning database..."

Event.destroy_all
User.destroy_all
Message.destroy_all
Chatroom.destroy_all
User_rating.destroy_all
EventRating.destroy_all

puts "Creating events, users, and participants"

user1 = User.create(first_name: "Jaime", last_name: "Sortir", gender: "H", birth_date: Date.new(1996,03,03), city: "Marseille", phone_number: "0756432354", hobbies: " Dessin", email: "jaime.sortir@gmail.com", username: "Jaime_Sortir", password: "123456")
user1.save
user2 = User.create(first_name: "Philippe", last_name: "Caillo", gender: "H", birth_date: Date.new(1991,07,09) , city: "Cannes", phone_number: "0765457325", hobbies: "Equitation", email: "Phil.C@gmail.com", username: "Philippe_C23", password: "123456")
user2.save
user3 = User.create(first_name: "Maeva", last_name: "Sodrey", gender: "F", birth_date: Date.new(1987,08,06), city: "Lyon", phone_number: "0643562134", hobbies: "Musique", email: "Sodrey.M@gmail.com", username: "MSodrey1", password: "123456")
user3.save
user4 = User.create(first_name: "Sarah", last_name: "Lorea", gender: "F", birth_date: Date.new(1993,05,13), city: "Nimes", phone_number: "0769764323", hobbies: "Danse", email: "Lorea.S@gmail.com", username: "Srh12", password: "123456")
user4.save
user5 = User.create(first_name: "Matthieu", last_name: "Delor", gender: "H", birth_date: Date.new(1998,09,08) , city: "Lille", phone_number: "0743231265", hobbies: "Gaming", email: "Delor.m22@gmail.com", username: "Delor66", password: "123456")
user5.save