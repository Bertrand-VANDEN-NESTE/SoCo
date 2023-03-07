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
# Chatroom.destroy_all
# UserRating.destroy_all
# EventRating.destroy_all

puts "Creating events, users, and participants"

file_event1 = URI.open("https://res.cloudinary.com/dqu1mk3mq/image/upload/v1678199791/latino_f7dztc.avif")
event1 = Event.new(title: "Carnaval Latino!", theme: "Fête", date: "16 mars 2023", location: "Exit Café 12 Quai de Rive Neuve 13007 Marseille", description: "Avancez et soyez transporté dans le monde vibrant et coloré du Carnaval Latin lors de notre incroyable fête à Marseille ! Avec des décorations éblouissantes, des costumes étonnants et des rythmes énergiques, vous serez immergé dans une célébration de la culture riche et vivante de l'Amérique latine. Préparez-vous à une nuit d'amusement et de divertissement non-stop qui vous fera faire la fête toute la nuit. Avec beaucoup de musique latine, c'est un événement que vous n'oublierez pas. Que vous soyez un danseur de salsa chevronné ou un fêtard novice, notre fête du Carnaval latin à Marseille est l'endroit où il faut être. Alors venez nous rejoindre pour une soirée inoubliable de couleurs, de musique et de plaisir. Nous sommes ravis de vous y voir !", capacity: 100, status: "public", tricount: "https://www.tricount.com/fr/creer-des-comptes-nouveau-tricount", password: "123456", user: user1)
event1.photo.attach(io: file_event1, filename: "event1.jpg", content_type: "image/jpg")
event1.save

file_event2 = URI.open("https://res.cloudinary.com/dqu1mk3mq/image/upload/v1678199788/afterwork_yejgqm.avif")
event2 = Event.new(title: "Afterwork de la communauté des engagés", theme: "Eco-action", date: Date.new(2023,03,14), location: "QG des éco-acteurs 28 Allée Léon Gambetta 13001 Marseille", description: "Connecter les personnes et les projets à impact positif sur le territoire d'Aix Marseille, et organiser une chaine de solidarité et de valeurs, c'est la raison d'être de cette nouvelle communauté d'acteurs et entrepreneurs engagés. Venez à leur rencontre autour d'un apéritif convival, et pourquoi pas... rejoignez le mouvement.", capacity: 50, status: "public", tricount: "https://www.tricount.com/fr/creer-des-comptes-nouveau-tricount", password: "123456", user: user2)
event2.photo.attach(io: file_event2, filename: "event2.jpg", content_type: "image/jpg")
event2.save

file_event3 = URI.open("URL CLOUNDINARY")
event3 = Event.new(title: "Comédie Club Vieux Port", theme: "Stand up", date: (2023,03,27), location: "16 Quai de Rive Neuve 13007 Marseille", description: "Des blagues et des bières, quoi de mieux pour commencer la semaine de bonne humeur ? 6 artistes se succéderont sur scène pour vous faire leurs meilleures blagues pendant une heure.", capacity: 70, status: "public", tricount: "https://www.tricount.com/fr/creer-des-comptes-nouveau-tricount", password: "123456", user: "user3", chatroom: "chatroom_event3")
event3.photo.attach(io: file_event3, filename: "event3.jpg", content_type: "image/jpg")
event3.save

file_event4 = URI.open("URL CLOUNDINARY")
event4 = Event.new(title: "Brunch e-commerce Marseille by Evolutive x Scalapay", theme: "E-commerce", date: (2023,03,27), location: "Sofitel Marseille Vieux-Port 36 Boulevard Charles Livon 13007 Marseille", description: "Le 09 mars prochain, Evolutive Group, Scalapay et Bridge vous invitent dans la magnifique ville de Marseille pour un atelier autour du e-commerce suivi d’un délicieux brunch pour échanger entre acteurs du e-commerce marseillais. Le tout dans le somptueux Sofitel Marseille Vieux Port.", capacity: 70, status: "public", tricount: "https://www.tricount.com/fr/creer-des-comptes-nouveau-tricount", password: "123456", user: user4)
event4.photo.attach(io: file_event4, filename: "event4.jpg", content_type: "image/jpg")
event4.save

file_event5 = URI.open("URL CLOUNDINARY")
event5 = Event.new(title: "Demoday Le Wagon", theme: "Formation", date: (2023,03,17), location: "Le Wagon 21 rue Haxo 13001 Marseille", description: "Pendant ces 9 semaines de bootcamp, nos apprenants ont travaillé dur pour apprendre à coder et gagner une autonomie technique. Ils peuvent aujourd’hui développer des applications web et mobiles de A à Z en Fullstack Rails ! Que vous soyez développeurs, recruteurs, alumnis, que vous cherchiez à apprendre à coder ou bien que vous soyez tout simplement curieux, vous êtes le/la bienvenu.e ! Les places sont limitées, ne tardez pas !", capacity: 40, status: "public", tricount: "https://www.tricount.com/fr/creer-des-comptes-nouveau-tricount", password: "123456", user: user5)
event5.photo.attach(io: file_event5, filename: "event5.jpg", content_type: "image/jpg")
event5.save

file_event6 = URI.open("URL CLOUNDINARY")
event6 = Event.new(title: "Boost ton Réseau dans les Bouches-du-Rhône par Bouge ta Boîte", theme: "Réseau", date: (2023,03,14), location: "Now Coworking 9 Quai de Rive Neuve 13007 Marseille", description: "Rejoins-nous pour notre événement Bouge ton Réseau ! Le principe est simple, te permettre de rencontrer un maximum de Bougeuses (membres du réseau) et d&#x27;entrepreneur.e.s du département dans une ambiance fun et dynamique ! #inspiration #reseautage #entrepreneuriat", capacity: 35, status: "public", tricount: "https://www.tricount.com/fr/creer-des-comptes-nouveau-tricount", password: "123456", user: user6)
event6.photo.attach(io: file_event6, filename: "event6.jpg", content_type: "image/jpg")
event6.save

file_event7 = URI.open("URL CLOUNDINARY")
event7 = Event.new(title: "Société de Musique de Chambre de Marseille", theme: "Musique", date: (2023,10,18), location: "Auditorium Maurice Toga Faculté de Médecine La Timone 27 Boulevard Jean Moulin 13005 Marseille", description: "Rejoins-nous pour notre événement Bouge ton Réseau ! Le principe est simple, te permettre de rencontrer un maximum de Bougeuses (membres du réseau) et d&#x27;entrepreneur.e.s du département dans une ambiance fun et dynamique ! #inspiration #reseautage #entrepreneuriat", capacity: 120, status: "public", tricount: "https://www.tricount.com/fr/creer-des-comptes-nouveau-tricount", password: "123456", user: user7)
event7.photo.attach(io: file_event7, filename: "event7.jpg", content_type: "image/jpg")
event7.save



user1 = User.create(first_name: "Jaime", last_name: "Sortir", gender: "H", birth_date: Date.new(1996,03,03), city: "Marseille", phone_number: "0756432354", hobbies: " Dessin", email: "jaime.sortir@gmail.com", username: "Jaime_Sortir", password: "123456")
user1.save
user2 = User.create(first_name: "Philippe", last_name: "Caillo", gender: "H", birth_date: Date.new(1991,07,9) , city: "Cannes", phone_number: "0765457325", hobbies: "Equitation", email: "Phil.C@gmail.com", username: "Philippe_C23", password: "123456")
user2.save
user3 = User.create(first_name: "Maeva", last_name: "Sodrey", gender: "F", birth_date: Date.new(1987,8,06), city: "Lyon", phone_number: "0643562134", hobbies: "Musique", email: "Sodrey.M@gmail.com", username: "MSodrey1", password: "123456")
user3.save
user4 = User.create(first_name: "Sarah", last_name: "Lorea", gender: "F", birth_date: Date.new(1993,05,13), city: "Nimes", phone_number: "0769764323", hobbies: "Danse", email: "Lorea.S@gmail.com", username: "Srh12", password: "123456")
user4.save
user5 = User.create(first_name: "Matthieu", last_name: "Delor", gender: "H", birth_date: Date.new(1998,9,8) , city: "Lille", phone_number: "0743231265", hobbies: "Gaming", email: "Delor.m22@gmail.com", username: "Delor66", password: "123456")
user5.save




