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
UserRating.destroy_all
EventRating.destroy_all

puts "Creating events, users, and participants"

file_event1 = URI.open("https://res.cloudinary.com/dqu1mk3mq/image/upload/v1678199791/latino_f7dztc.avif")
event1 = Event.new(title: "Carnaval Latino!", theme: "Fête", date: "16 mars 2023", location: "Exit Café 12 Quai de Rive Neuve 13007 Marseille", description: "Avancez et soyez transporté dans le monde vibrant et coloré du Carnaval Latin lors de notre incroyable fête à Marseille ! Avec des décorations éblouissantes, des costumes étonnants et des rythmes énergiques, vous serez immergé dans une célébration de la culture riche et vivante de l'Amérique latine. Préparez-vous à une nuit d'amusement et de divertissement non-stop qui vous fera faire la fête toute la nuit. Avec beaucoup de musique latine, c'est un événement que vous n'oublierez pas. Que vous soyez un danseur de salsa chevronné ou un fêtard novice, notre fête du Carnaval latin à Marseille est l'endroit où il faut être. Alors venez nous rejoindre pour une soirée inoubliable de couleurs, de musique et de plaisir. Nous sommes ravis de vous y voir !", capacity: 100, status: "public", tricount: "https://www.tricount.com/fr/creer-des-comptes-nouveau-tricount", password: "123456", user: "user1", chatroom: "chatroom_event1")
event1.photo.attach(io: file_event1, filename: "event1.jpg", content_type: "image/jpg")
event1.save

file_event2 = URI.open("https://res.cloudinary.com/dqu1mk3mq/image/upload/v1678199788/afterwork_yejgqm.avif")
event2 = Event.new(title: "Afterwork de la communauté des engagés", theme: "Eco-action", date: (2023,03,14), location: "QG des éco-acteurs 28 Allée Léon Gambetta 13001 Marseille", description: "Connecter les personnes et les projets à impact positif sur le territoire d'Aix Marseille, et organiser une chaine de solidarité et de valeurs, c'est la raison d'être de cette nouvelle communauté d'acteurs et entrepreneurs engagés. Venez à leur rencontre autour d'un apéritif convival, et pourquoi pas... rejoignez le mouvement.", capacity: 50, status: "public", tricount: "https://www.tricount.com/fr/creer-des-comptes-nouveau-tricount", password: "123456", user: "user2", chatroom: "chatroom_event2")
event2.photo.attach(io: file_event2, filename: "event1.jpg", content_type: "image/jpg")
event2.save


file_event8 = URI.open("https://res.cloudinary.com/dqu1mk3mq/image/upload/v1678199791/latino_f7dztc.avif")
event8 = Event.new(title: "Exposition", theme: "Culture", date: Date.new(2023,08,24), location: "30 quai de rive neuve 13007 Marseille", description: "Notre galerie expose un artiste populaire italien. Ces scultures ont eu un grand succée à Vienne et Milan. Il nous fait le privilége de venir sur Marseille pour une durée de 2 jours.", capacity: 80, status: "public", tricount: "https://www.tricount.com/fr/creer-des-comptes-nouveau-tricount", password: "123456", user: user8)
event8.photo.attach(io: file_event8, filename: "event8.jpg", content_type: "image/jpg")
event8.save

file_event9 = URI.open("https://res.cloudinary.com/dqu1mk3mq/image/upload/v1678199791/latino_f7dztc.avif")
event8 = Event.new(title: "Spectacle danse oriental", theme: "Danse", date: Date.new(2023,06,14), location: "29 rue désirée clary 13002 Marseille", description: "La danseuse star Didem vient nous rendre visite avec toute sa troupe. Elle sera en representation toute la journée, plusieurs activités seront proposés afin de vous faire vivre toutes les joies de l'orient.", capacity: 100, status: "public", tricount: "https://www.tricount.com/fr/creer-des-comptes-nouveau-tricount", password: "123456", user: user9)
event8.photo.attach(io: file_event9, filename: "event9.jpg", content_type: "image/jpg")
event8.save

file_event10 = URI.open("https://res.cloudinary.com/dqu1mk3mq/image/upload/v1678199791/latino_f7dztc.avif")
event10 = Event.new(title: "Gay pride!", theme: "Fête", date: Date.new(2023,05,11), location: "Vieux Port Marseille", description: "Hello, le char partira a partir du Vieux port en face du restaurant de l'OM, veuillez prévoir vos meilleures tenues et accéssoires. Les 20 premières personnes a s'inscrire pourront monter avec toute l'équipe", capacity: 100, status: "public", tricount: "https://www.tricount.com/fr/creer-des-comptes-nouveau-tricount", password: "123456", user: user10)
event10.photo.attach(io: file_event10, filename: "event10.jpg", content_type: "image/jpg")
event10.save

file_event11 = URI.open("https://res.cloudinary.com/dqu1mk3mq/image/upload/v1678199791/latino_f7dztc.avif")
event11 = Event.new(title: "Soirée Billard!", theme: "Fête", date: Date.new(2023,03,18), location: "Queen victoria 1 place aux huiles 13001 Marseille", description: "Bonjour, bienvenue a notre soirée billard, venez profiter avec toute notre équipe. Un turnoi sera mis en place, le gagnant aura droit a une belle surprise.", capacity: 100, status: "public", tricount: "https://www.tricount.com/fr/creer-des-comptes-nouveau-tricount", password: "123456", user: user11)
event11.photo.attach(io: file_event11, filename: "event11.jpg", content_type: "image/jpg")
event11.save

file_event12 = URI.open("https://res.cloudinary.com/dqu1mk3mq/image/upload/v1678199791/latino_f7dztc.avif")
event12 = Event.new(title: "Pique Nique en face de la piscine", theme: "Fête", date: Date.new(2023,07,04), location: "Chemin de l'impasse Villa Karthy 13012 Marseille", description: "Nous vous proposons une incroyable après-midi, devant la piscine et un barbecue. Mon épouse et moi nous ferons un plaisir de festoyer avec vous. Serviette de plage exigée !", capacity: 12, status: "privé", tricount: "https://www.tricount.com/fr/creer-des-comptes-nouveau-tricount", password: "123456", user: user12)
event12.photo.attach(io: file_event12, filename: "event12.jpg", content_type: "image/jpg")
event12.save

file_event13 = URI.open("https://res.cloudinary.com/dqu1mk3mq/image/upload/v1678199791/latino_f7dztc.avif")
event13 = Event.new(title: "Séminaire pop art", theme: "Culture", date: Date.new(2023,11,03), location: "Parc Chanot 13008 Marseille", description: "Pour ce séminaire nous avons décidé de reunir plusieurs artistes du monde entier. Ce rassemblement permet de proumouvoir toute influence artistique que notre mordernité peut connaitre.", capacity: 100, status: "public", tricount: "https://www.tricount.com/fr/creer-des-comptes-nouveau-tricount", password: "123456", user: user13)
event13.photo.attach(io: file_event13, filename: "event13.jpg", content_type: "image/jpg")
event13.save

file_event14 = URI.open("https://res.cloudinary.com/dqu1mk3mq/image/upload/v1678199791/latino_f7dztc.avif")
event14 = Event.new(title: "Pool party", theme: "Fête", date: Date.new(2023,06,22), location: "Place du Prado 13008 Marseille", description: "Pool party phénomenal sur Marseille, notre Dj star sera la pour la journée. En soirée nous aurons le privilége de recevoir Biyouna grande actrice vietnamienne qui chantera son tube international"  , capacity: 100, status: "public", tricount: "https://www.tricount.com/fr/creer-des-comptes-nouveau-tricount", password: "123456", user: user14)
event14.photo.attach(io: file_event14, filename: "event14.jpg", content_type: "image/jpg")
event14.save

file_event15 = URI.open("https://res.cloudinary.com/dqu1mk3mq/image/upload/v1678199791/latino_f7dztc.avif")
event15 = Event.new(title: "Soirée Rencontre", theme: "Fête", date: Date.new(2023,05,05), location: "Place de la timone 13010 Marseille", description: "Une soirée entre amis afin de faire de nouvelles rencontres. Accompagné de ma compagne et de mon chien Youyou, nous serons ravi de vous acceuillir à la maison. Tenue correct exigé merci !", capacity: 10, status: "privé", tricount: "https://www.tricount.com/fr/creer-des-comptes-nouveau-tricount", password: "123456", user: user15)
event15.photo.attach(io: file_event15, filename: "event15.jpg", content_type: "image/jpg")
event15.save








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
