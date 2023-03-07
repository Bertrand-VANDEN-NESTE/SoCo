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
# User_rating.destroy_all
EventRating.destroy_all

puts "Creating events, users, and participants"

user1 = User.create(first_name: "Jaime", last_name: "Sortir", gender: "", birth_date: , city: "", phone_number: "", hobbies: "", email: "jaime.sortir@gmail.com", username: "", password: "123456")

# file_event1 = URI.open("URL CLOUNDINARY")
# event1 = Event.new(title: "Carnaval Latino!", theme: "Fête", date: "16 mars 2023", location: "Exit Café 12 Quai de Rive Neuve 13007 Marseille", description: "Avancez et soyez transporté dans le monde vibrant et coloré du Carnaval Latin lors de notre incroyable fête à Marseille ! Avec des décorations éblouissantes, des costumes étonnants et des rythmes énergiques, vous serez immergé dans une célébration de la culture riche et vivante de l'Amérique latine. Préparez-vous à une nuit d'amusement et de divertissement non-stop qui vous fera faire la fête toute la nuit. Avec beaucoup de musique latine, c'est un événement que vous n'oublierez pas. Que vous soyez un danseur de salsa chevronné ou un fêtard novice, notre fête du Carnaval latin à Marseille est l'endroit où il faut être. Alors venez nous rejoindre pour une soirée inoubliable de couleurs, de musique et de plaisir. Nous sommes ravis de vous y voir !", capacity: 100, status: "public", tricount: "https://www.tricount.com/fr/creer-des-comptes-nouveau-tricount", password: "123456", user: "user1", chatroom: "chatroom_event1")
# event1.photo.attach(io: file_event1, filename: "event1.jpg", content_type: "image/jpg")
# event1.save

# chatroom_event1 = URI.open
# chatroom_event1 = chatroom_event1.new(name: "Carnaval Latino!", user: "user1")

# reservation1 = Reservation.create(user: user1, event: event1, participants: 2)
# puts 'Finished!'









# t.string "title"
# t.string "theme"
# t.date "date"
# t.string "location"
# t.text "description"
# t.integer "capacity"
# t.string "status"
# t.string "tricount"
# t.string "password"
# t.bigint "user_id", null: false
# t.bigint "chatroom_id", null: false
# t.datetime "created_at", null: false
# t.datetime "updated_at", null: false
# t.index ["chatroom_id"], name: "index_events_on_chatroom_id"
# t.index ["user_id"], name: "index_events_on_user_id"
