require "open-uri"

puts "Cleaning database..."

User.destroy_all
Event.destroy_all
EventRating.destroy_all
Chatroom.destroy_all
Message.destroy_all
Category.destroy_all

puts "Creating events, users, categories, chatrooms, etc."

file_user1 = URI.open("https://res.cloudinary.com/dqu1mk3mq/image/upload/v1678700558/soco/lucas-gouvea-aoEwuEH7YAs-unsplash_jiaume.jpg")
user1 = User.create(first_name: "Jaime", last_name: "Sortir", gender: "H", birth_date: Date.new(1996, 3, 3), city: "Marseille", phone_number: "0756432354", hobbies: " Dessin", email: "jaime.sortir@gmail.com", username: "Jaime_Sortir", password: "123456")
user1.photo.attach(io: file_user1, filename: "user1.jpg", content_type: "image/jpg")
user1.save

file_user2 = URI.open("https://res.cloudinary.com/dqu1mk3mq/image/upload/v1678700558/soco/robert-godwin-cdksyTqEXzo-unsplash_plwlmu.jpg")
user2 = User.create(first_name: "Philippe", last_name: "Caillo", gender: "H", birth_date: Date.new(1991, 7, 9), city: "Cannes", phone_number: "0765457325", hobbies: "Equitation", email: "Phil.C@gmail.com", username: "Philippe_C23", password: "123456")
user2.photo.attach(io: file_user2, filename: "user2.jpg", content_type: "image/jpg")
user2.save

file_user3 = URI.open("https://res.cloudinary.com/dqu1mk3mq/image/upload/v1678700558/soco/toa-heftiba-O3ymvT7Wf9U-unsplash_muzreg.jpg")
user3 = User.create(first_name: "Maeva", last_name: "Sodrey", gender: "F", birth_date: Date.new(1987, 8, 6), city: "Lyon", phone_number: "0643562134", hobbies: "Musique", email: "Sodrey.M@gmail.com", username: "MSodrey1", password: "123456")
user3.photo.attach(io: file_user3, filename: "user3.jpg", content_type: "image/jpg")
user3.save

file_user4 = URI.open("https://res.cloudinary.com/dqu1mk3mq/image/upload/v1678700558/soco/kimson-doan-HD8KlyWRYYM-unsplash_xfxzbn.jpg")
user4 = User.create(first_name: "Sarah", last_name: "Lorea", gender: "F", birth_date: Date.new(1993, 5, 13), city: "Nimes", phone_number: "0769764323", hobbies: "Danse", email: "Lorea.S@gmail.com", username: "Srh12", password: "123456")
user4.photo.attach(io: file_user4, filename: "user4.jpg", content_type: "image/jpg")
user4.save

file_user5 = URI.open("https://res.cloudinary.com/dqu1mk3mq/image/upload/v1678700542/soco/cesar-rincon-XHVpWcr5grQ-unsplash_tyhg6l.jpg")
user5 = User.create(first_name: "Matthieu", last_name: "Delor", gender: "H", birth_date: Date.new(1998, 9, 8), city: "Lille", phone_number: "0743231265", hobbies: "Gaming", email: "Delor.m22@gmail.com", username: "Delor66", password: "123456")
user5.photo.attach(io: file_user5, filename: "user5.jpg", content_type: "image/jpg")
user5.save

file_user6 = URI.open("https://res.cloudinary.com/dqu1mk3mq/image/upload/v1678704584/soco/mathilde-langevin-yuahvgxIXjE-unsplash_pqrvyr.jpg")
user6 = User.create(first_name: "Nathalie", last_name: "Tournier", gender: "F", birth_date: Date.new(1968, 12, 6), city: "Paris", phone_number: "077892415630", hobbies: "Danse", email: "nathalie.tournier@gmail.com", username: "chouchoune", password: "123456")
user6.photo.attach(io: file_user6, filename: "user6.jpg", content_type: "image/jpg")
user6.save

file_user7 = URI.open("https://res.cloudinary.com/dqu1mk3mq/image/upload/v1678700483/soco/austin-wade-X6Uj51n5CE8-unsplash_y1lduj.jpg")
user7 = User.create(first_name: "Paul", last_name: "Rodier", gender: "H", birth_date: Date.new(1968, 12, 6), city: "Marseille", phone_number: "0752378963", hobbies: "Lecture", email: "pcordier@gmail.com", username: "pc", password: "123456")
user7.photo.attach(io: file_user7, filename: "user7.jpg", content_type: "image/jpg")
user7.save

file_user8 = URI.open("https://res.cloudinary.com/dqu1mk3mq/image/upload/v1678700483/soco/michael-dam-mEZ3PoFGs_k-unsplash_xfvw3u.jpg")
user8 = User.create(first_name: "Beya", last_name: "Stambouli", gender: "F", birth_date: Date.new(1993, 2, 28), city: "Nimes", phone_number: "0654169823", hobbies: "Gaming", email: "Beya.stambouli@gmail.com", username: "stambouli49", password: "123456")
user8.photo.attach(io: file_user8, filename: "user8.jpg", content_type: "image/jpg")
user8.save

file_user9 = URI.open("https://res.cloudinary.com/dqu1mk3mq/image/upload/v1678704529/soco/tyler-nix-X2YO8KFxgEM-unsplash_ehu6rv.jpg")
user9 = User.create(first_name: "Ines", last_name: "Aitdjebarra", gender: "F", birth_date: Date.new(1986, 3, 1), city: "Paris", phone_number: "0759071234", hobbies: "Art", email: "Ait-ines@gmail.com", username: "DAitdje45", password: "123456")
user9.photo.attach(io: file_user9, filename: "user9.jpg", content_type: "image/jpg")
user9.save

file_user10 = URI.open("https://res.cloudinary.com/dqu1mk3mq/image/upload/v1678704530/soco/austin-distel-7uoMmzPd2JA-unsplash_s1sh9z.jpg")
user10 = User.create(first_name: "Damien", last_name: "Dedin", gender: "H", birth_date: Date.new(1991, 11, 22), city: "Marseille", phone_number: "0659074543", hobbies: "Danse", email: "Dedin.damien@gmail.com", username: "Dedin63", password: "123456")
user10.photo.attach(io: file_user10, filename: "user10.jpg", content_type: "image/jpg")
user10.save

file_user11 = URI.open("https://res.cloudinary.com/dqu1mk3mq/image/upload/v1678704530/soco/ashton-bingham-EQFtEzJGERg-unsplash_y7eppi.jpg")
user11 = User.create(first_name: "Maxime", last_name: "Xany", gender: "H", birth_date: Date.new(1965, 8, 5), city: "Lyon", phone_number: "0654238703", hobbies: "Musique", email: "Xany.maxime@gmail.com", username: "Xany56", password: "123456")
user11.photo.attach(io: file_user11, filename: "user11.jpg", content_type: "image/jpg")
user11.save

file_user12 = URI.open("https://res.cloudinary.com/dqu1mk3mq/image/upload/v1678704529/soco/alma-lxsduAdWXy4-unsplash_a01cmb.jpg")
user12 = User.create(first_name: "Rachina", last_name: "Doukali", gender: "F", birth_date: Date.new(1976, 10, 12) , city: "Cannes", phone_number: "0623946125", hobbies: "Culture", email: "Doukali.rachida@gmail.com", username: "Doukali23", password: "123456")
user12.photo.attach(io: file_user12, filename: "user12.jpg", content_type: "image/jpg")
user12.save

file_user13 = URI.open("https://res.cloudinary.com/dqu1mk3mq/image/upload/v1678704529/soco/julian-wan-WNoLnJo7tS8-unsplash_gj1ets.jpg")
user13 = User.create(first_name: "Many", last_name: "Trad", gender: "H", birth_date: Date.new(1996, 7, 3), city: "Nice", phone_number: "0758076543", hobbies: "Cuisine", email: "Trad.many@gmail.com", username: "Trad45", password: "123456")
user13.photo.attach(io: file_user13, filename: "user13.jpg", content_type: "image/jpg")
user13.save

file_user14 = URI.open("https://res.cloudinary.com/dqu1mk3mq/image/upload/v1678704529/soco/taylor-8Vt2haq8NSQ-unsplash_sxnoaq.jpg")
user14 = User.create(first_name: "Vincent", last_name: "Protille", gender: "H", birth_date: Date.new(1994, 2, 8) , city: "Bordeaux", phone_number: "0776459823", hobbies: "Equitation", email: "Protille.Vincent@gmail.com", username: "Protille239", password: "123456")
user14.photo.attach(io: file_user14, filename: "user14.jpg", content_type: "image/jpg")
user14.save

file_user15 = URI.open("https://res.cloudinary.com/dqu1mk3mq/image/upload/v1678704529/soco/freestocks-9UVmlIb0wJU-unsplash_y721pn.jpg")
user15 = User.create(first_name: "Hanene", last_name: "Bensadock", gender: "F", birth_date: Date.new(1989, 5, 11) , city: "Lille", phone_number: "0645085672", hobbies: "Sport", email: "Bensadock.hanene@gmail.com", username: "Ben657", password: "123456")
user15.photo.attach(io: file_user15, filename: "user15.jpg", content_type: "image/jpg")
user15.save

file_user16 = URI.open("https://res.cloudinary.com/dqu1mk3mq/image/upload/v1678700542/soco/ayo-ogunseinde-6W4F62sN_yI-unsplash_cbg0fs.jpg")
user16 = User.create(first_name: "Attimin", last_name: "Cuk", gender: "F", birth_date: Date.new(1931, 5, 16), city: "Carcassonne", phone_number: "0752378496", hobbies: "Plantes", email: "grandma@gmail.com", username: "iamstillyoung", password: "123456")
user16.photo.attach(io: file_user16, filename: "user16.jpg", content_type: "image/jpg")
user16.save

file_user17 = URI.open("https://res.cloudinary.com/dqu1mk3mq/image/upload/v1678700483/soco/jimmy-fermin-bqe0J0b26RQ-unsplash_bohvyc.jpg")
user17 = User.create(first_name: "Michèle", last_name: "Zappata", gender: "F", birth_date: Date.new(1940, 9, 21), city: "Arles", phone_number: "0724536785", hobbies: "Décoration", email: "jeddah@gmail.com", username: "iamthebest", password: "123456")
user17.photo.attach(io: file_user17, filename: "user17.jpg", content_type: "image/jpg")
user17.save

file_user18 = URI.open("https://res.cloudinary.com/dqu1mk3mq/image/upload/v1678700483/soco/joseph-gonzalez-iFgRcqHznqg-unsplash_fn6fwp.jpg")
user18 = User.create(first_name: "Taieb", last_name: "Salmi", gender: "H", birth_date: Date.new(1953, 2, 27), city: "Marseille", phone_number: "072100352035", hobbies: "Jardinage", email: "papou@gmail.com", username: "iamthebest", password: "123456")
user18.photo.attach(io: file_user18, filename: "user18.jpg", content_type: "image/jpg")
user18.save

file_user19 = URI.open("https://res.cloudinary.com/dqu1mk3mq/image/upload/v1678705191/localize-TZwDRq2MqXs-unsplash_joyaa7.jpg")
user19 = User.create(first_name: "Jilali", last_name: "Le Victorieux", gender: "H", birth_date: Date.new(1943, 1, 1), city: "Aix-en-Provence", phone_number: "070102030405", hobbies: "Voyages", email: "lilajil@gmail.com", username: "lilajil", password: "123456")
user19.photo.attach(io: file_user19, filename: "user19.jpg", content_type: "image/jpg")
user19.save

file_user20 = URI.open("https://res.cloudinary.com/dqu1mk3mq/image/upload/v1678704609/soco/aiony-haust-3TLl_97HNJo-unsplash_uxm7hg.jpg")
user20 = User.create(first_name: "Pierrette", last_name: "Ségura", gender: "F", birth_date: Date.new(1943, 12, 25), city: "Tarascon", phone_number: "0725436859", hobbies: "Cuisine", email: "pierrette.segura@gmail.com", username: "pierrettedupanier", password: "123456")
user20.photo.attach(io: file_user20, filename: "user20.jpg", content_type: "image/jpg")
user5.save

puts "users successfully created!"

file_event1 = URI.open("https://res.cloudinary.com/dqu1mk3mq/image/upload/v1678705996/5e43ddb455d043.58647812_wgmd8u.jpg")
event1 = Event.new(title: "Carnaval Latino!", date: Date.new(2023, 3, 26), location: "Exit Café 12 Quai de Rive Neuve 13007 Marseille", description: "Avancez et soyez transporté dans le monde vibrant et coloré du Carnaval Latin lors de notre incroyable fête à Marseille ! Avec des décorations éblouissantes, des costumes étonnants et des rythmes énergiques, vous serez immergé dans une célébration de la culture riche et vivante de l'Amérique latine. Préparez-vous à une nuit d'amusement et de divertissement non-stop qui vous fera faire la fête toute la nuit. Avec beaucoup de musique latine, c'est un événement que vous n'oublierez pas. Que vous soyez un danseur de salsa chevronné ou un fêtard novice, notre fête du Carnaval latin à Marseille est l'endroit où il faut être. Alors venez nous rejoindre pour une soirée inoubliable de couleurs, de musique et de plaisir. Nous sommes ravis de vous y voir !", capacity: 100, status: "public", tricount: "https://www.tricount.com/fr/creer-des-comptes-nouveau-tricount", password: "123456", user: user1)
event1.photo.attach(io: file_event1, filename: "event1.jpg", content_type: "image/jpg")
event1.save

file_event2 = URI.open("https://res.cloudinary.com/dqu1mk3mq/image/upload/v1678697321/soco/https_3A_2F_2Fcdn.evbuc.com_2Fimages_2F415759669_2F1275937052053_2F1_2Foriginal_szcglt.jpg")
event2 = Event.new(title: "Afterwork de la communauté des engagés", date: Date.new(2023, 3, 14), location: "QG des éco-acteurs 28 Allée Léon Gambetta 13001 Marseille", description: "Connecter les personnes et les projets à impact positif sur le territoire d'Aix Marseille, et organiser une chaine de solidarité et de valeurs, c'est la raison d'être de cette nouvelle communauté d'acteurs et entrepreneurs engagés. Venez à leur rencontre autour d'un apéritif convival, et pourquoi pas... rejoignez le mouvement.", capacity: 50, status: "public", tricount: "https://www.tricount.com/fr/creer-des-comptes-nouveau-tricount", password: "123456", user: user2)
event2.photo.attach(io: file_event2, filename: "event2.jpg", content_type: "image/jpg")
event2.save

file_event3 = URI.open("https://res.cloudinary.com/dqu1mk3mq/image/upload/v1678698210/soco/le-quai-du-rire-89405035_yesqcq.jpg")
event3 = Event.new(title: "Comédie Club Vieux Port", date: Date.new(2023, 3, 27), location: "16 Quai de Rive Neuve 13007 Marseille", description: "Des blagues et des bières, quoi de mieux pour commencer la semaine de bonne humeur ? 6 artistes se succéderont sur scène pour vous faire leurs meilleures blagues pendant une heure.", capacity: 70, status: "public", tricount: "https://www.tricount.com/fr/creer-des-comptes-nouveau-tricount", password: "123456", user: user3)
event3.photo.attach(io: file_event3, filename: "event3.jpg", content_type: "image/jpg")
event3.save

file_event4 = URI.open("https://res.cloudinary.com/dqu1mk3mq/image/upload/v1678697338/soco/https_3A_2F_2Fcdn.evbuc.com_2Fimages_2F462608669_2F1108580016293_2F1_2Foriginal_rngfdl.jpg")
event4 = Event.new(title: "Brunch e-commerce Marseille by Evolutive x Scalapay", date: Date.new(2023, 3, 27), location: "Sofitel Marseille Vieux-Port 36 Boulevard Charles Livon 13007 Marseille", description: "Le 09 mars prochain, Evolutive Group, Scalapay et Bridge vous invitent dans la magnifique ville de Marseille pour un atelier autour du e-commerce suivi d’un délicieux brunch pour échanger entre acteurs du e-commerce marseillais. Le tout dans le somptueux Sofitel Marseille Vieux Port.", capacity: 70, status: "public", tricount: "https://www.tricount.com/fr/creer-des-comptes-nouveau-tricount", password: "123456", user: user4)
event4.photo.attach(io: file_event4, filename: "event4.jpg", content_type: "image/jpg")
event4.save

file_event5 = URI.open("https://res.cloudinary.com/dqu1mk3mq/image/upload/v1678698062/soco/le-Wagon_xl7jlc.png")
event5 = Event.new(title: "Demoday Le Wagon", date: Date.new(2023, 3, 17), location: "Le Wagon 21 rue Haxo 13001 Marseille", description: "Pendant ces 9 semaines de bootcamp, nos apprenants ont travaillé dur pour apprendre à coder et gagner une autonomie technique. Ils peuvent aujourd’hui développer des applications web et mobiles de A à Z en Fullstack Rails ! Que vous soyez développeurs, recruteurs, alumnis, que vous cherchiez à apprendre à coder ou bien que vous soyez tout simplement curieux, vous êtes le/la bienvenu.e ! Les places sont limitées, ne tardez pas !", capacity: 40, status: "public", tricount: "https://www.tricount.com/fr/creer-des-comptes-nouveau-tricount", password: "123456", user: user5)
event5.photo.attach(io: file_event5, filename: "event5.jpg", content_type: "image/png")
event5.save

file_event6 = URI.open("https://res.cloudinary.com/dqu1mk3mq/image/upload/v1678697352/soco/https_3A_2F_2Fcdn.evbuc.com_2Fimages_2F436631129_2F309258733797_2F1_2Foriginal_u4tnbh.jpg")
event6 = Event.new(title: "Boost ton Réseau dans les Bouches-du-Rhône par Bouge ta Boîte", date: Date.new(2023, 3, 14), location: "Now Coworking 9 Quai de Rive Neuve 13007 Marseille", description: "Rejoins-nous pour notre événement Bouge ton Réseau ! Le principe est simple, te permettre de rencontrer un maximum de Bougeuses (membres du réseau) et d&#x27;entrepreneur.e.s du département dans une ambiance fun et dynamique ! #inspiration #reseautage #entrepreneuriat", capacity: 35, status: "public", tricount: "https://www.tricount.com/fr/creer-des-comptes-nouveau-tricount", password: "123456", user: user1)
event6.photo.attach(io: file_event6, filename: "event6.jpg", content_type: "image/jpg")
event6.save

file_event7 = URI.open("https://res.cloudinary.com/dqu1mk3mq/image/upload/v1678697485/soco/284512482_174768221593363_7760413973300804735_n.jpg_bmqtyc.jpg")
event7 = Event.new(title: "Société de Musique de Chambre de Marseille", date: Date.new(2023, 10, 18), location: "Auditorium Maurice Toga Faculté de Médecine La Timone 27 Boulevard Jean Moulin 13005 Marseille", description: "Rejoins-nous pour notre événement Bouge ton Réseau ! Le principe est simple, te permettre de rencontrer un maximum de Bougeuses (membres du réseau) et d&#x27;entrepreneur.e.s du département dans une ambiance fun et dynamique ! #inspiration #reseautage #entrepreneuriat", capacity: 120, status: "public", tricount: "https://www.tricount.com/fr/creer-des-comptes-nouveau-tricount", password: "123456", user: user3)
event7.photo.attach(io: file_event7, filename: "event7.jpg", content_type: "image/jpg")
event7.save

file_event8 = URI.open("https://res.cloudinary.com/dqu1mk3mq/image/upload/v1678696921/soco/SISTINE-CHAPEL_LYON-013-scaled-1_oyl6nv.jpg")
event8 = Event.new(title: "Exposition", date: Date.new(2023, 8, 24), location: "30 quai de rive neuve 13007 Marseille", description: "Notre galerie expose un artiste populaire italien. Ces scultures ont eu un grand succée à Vienne et Milan. Il nous fait le privilége de venir sur Marseille pour une durée de 2 jours.", capacity: 80, status: "public", tricount: "https://www.tricount.com/fr/creer-des-comptes-nouveau-tricount", password: "123456", user: user2)
event8.photo.attach(io: file_event8, filename: "event8.jpg", content_type: "image/jpg")
event8.save

file_event9 = URI.open("https://res.cloudinary.com/dqu1mk3mq/image/upload/v1678696887/soco/danseuse_orientale_b12_pss7ta.jpg")
event9 = Event.new(title: "Spectacle danse oriental", date: Date.new(2023, 6, 14), location: "29 rue désirée clary 13002 Marseille", description: "La danseuse star Didem vient nous rendre visite avec toute sa troupe. Elle sera en representation toute la journée, plusieurs activités seront proposés afin de vous faire vivre toutes les joies de l'orient.", capacity: 100, status: "public", tricount: "https://www.tricount.com/fr/creer-des-comptes-nouveau-tricount", password: "123456", user: user4)
event9.photo.attach(io: file_event9, filename: "event9.jpg", content_type: "image/jpg")
event9.save

file_event10 = URI.open("https://res.cloudinary.com/dqu1mk3mq/image/upload/v1678696903/soco/so-57eb934066a4bd7760c21969-ph0_cj1oof.jpg")
event10 = Event.new(title: "Gay pride!", date: Date.new(2023, 5, 11), location: "Vieux Port Marseille", description: "Hello, le char partira a partir du Vieux port en face du restaurant de l'OM, veuillez prévoir vos meilleures tenues et accéssoires. Les 20 premières personnes a s'inscrire pourront monter avec toute l'équipe", capacity: 100, status: "public", tricount: "https://www.tricount.com/fr/creer-des-comptes-nouveau-tricount", password: "123456", user: user2)
event10.photo.attach(io: file_event10, filename: "event10.jpg", content_type: "image/jpg")
event10.save

file_event11 = URI.open("https://res.cloudinary.com/dqu1mk3mq/image/upload/v1678697371/soco/image-black-angus-restaurant-viande-marseille-la-valentine-26_20200219172622_m59gf4.jpg")
event11 = Event.new(title: "Soirée Billard!", date: Date.new(2023, 3, 18), location: "Queen victoria 1 place aux huiles 13001 Marseille", description: "Bonjour, bienvenue a notre soirée billard, venez profiter avec toute notre équipe. Un turnoi sera mis en place, le gagnant aura droit a une belle surprise.", capacity: 100, status: "public", tricount: "https://www.tricount.com/fr/creer-des-comptes-nouveau-tricount", password: "123456", user: user1)
event11.photo.attach(io: file_event11, filename: "event11.jpg", content_type: "image/jpg")
event11.save

file_event12 = URI.open("https://res.cloudinary.com/dqu1mk3mq/image/upload/v1678697402/soco/pique-nique-piscine_dnmdgi.jpg")
event12 = Event.new(title: "Pique Nique en face de la piscine", date: Date.new(2023, 7, 4), location: "Chemin de l'impasse Villa Karthy 13012 Marseille", description: "Nous vous proposons une incroyable après-midi, devant la piscine et un barbecue. Mon épouse et moi nous ferons un plaisir de festoyer avec vous. Serviette de plage exigée !", capacity: 12, status: "privé", tricount: "https://www.tricount.com/fr/creer-des-comptes-nouveau-tricount", password: "123456", user: user3)
event12.photo.attach(io: file_event12, filename: "event12.jpg", content_type: "image/jpg")
event12.save

file_event13 = URI.open("https://res.cloudinary.com/dqu1mk3mq/image/upload/v1678697385/soco/8fbb4f36b3641433d38bfc79cb60990d_o7gxak.jpg")
event13 = Event.new(title: "Séminaire pop art", date: Date.new(2023, 11, 3), location: "Parc Chanot 13008 Marseille", description: "Pour ce séminaire nous avons décidé de reunir plusieurs artistes du monde entier. Ce rassemblement permet de proumouvoir toute influence artistique que notre mordernité peut connaitre.", capacity: 100, status: "public", tricount: "https://www.tricount.com/fr/creer-des-comptes-nouveau-tricount", password: "123456", user: user3)
event13.photo.attach(io: file_event13, filename: "event13.jpg", content_type: "image/jpg")
event13.save

file_event14 = URI.open("https://res.cloudinary.com/dqu1mk3mq/image/upload/v1678697420/soco/image-102_fwfg9j.jpg")
event14 = Event.new(title: "Pool party", date: Date.new(2023, 6, 22), location: "Place du Prado 13008 Marseille", description: "Pool party phénomenal sur Marseille, notre Dj star sera la pour la journée. En soirée nous aurons le privilége de recevoir Biyouna grande actrice vietnamienne qui chantera son tube international"  , capacity: 100, status: "public", tricount: "https://www.tricount.com/fr/creer-des-comptes-nouveau-tricount", password: "123456", user: user1)
event14.photo.attach(io: file_event14, filename: "event14.jpg", content_type: "image/jpg")
event14.save

file_event15 = URI.open("https://res.cloudinary.com/dqu1mk3mq/image/upload/v1678697436/soco/image_rb16ob.jpg")
event15 = Event.new(title: "Soirée Rencontre", date: Date.new(2023, 5, 5), location: "Place de la timone 13010 Marseille", description: "Une soirée entre amis afin de faire de nouvelles rencontres. Accompagné de ma compagne et de mon chien Youyou, nous serons ravi de vous acceuillir à la maison. Tenue correct exigé merci !", capacity: 10, status: "privé", tricount: "https://www.tricount.com/fr/creer-des-comptes-nouveau-tricount", password: "123456", user: user5)
event15.photo.attach(io: file_event15, filename: "event15.jpg", content_type: "image/jpg")
event15.save

puts "events successfully created!"

Participant.create(user_id: user1.id, event_id: event1.id)
Participant.create(user_id: user2.id, event_id: event2.id)
Participant.create(user_id: user3.id, event_id: event3.id)
Participant.create(user_id: user4.id, event_id: event4.id)
Participant.create(user_id: user5.id, event_id: event5.id)
Participant.create(user_id: user6.id, event_id: event6.id)
Participant.create(user_id: user7.id, event_id: event7.id)
Participant.create(user_id: user8.id, event_id: event8.id)
Participant.create(user_id: user9.id, event_id: event9.id)
Participant.create(user_id: user10.id, event_id: event10.id)
Participant.create(user_id: user11.id, event_id: event11.id)
Participant.create(user_id: user12.id, event_id: event12.id)
Participant.create(user_id: user13.id, event_id: event13.id)
Participant.create(user_id: user14.id, event_id: event14.id)
Participant.create(user_id: user15.id, event_id: event15.id)

puts "participants successfully created!"

Chatroom.create!(event_id: event1.id)
Chatroom.create!(event_id: event2.id)
Chatroom.create!(event_id: event3.id)
Chatroom.create!(event_id: event4.id)
chat5 = Chatroom.create!(event_id: event5.id)
Chatroom.create!(event_id: event6.id)
Chatroom.create!(event_id: event7.id)
Chatroom.create!(event_id: event8.id)
Chatroom.create!(event_id: event9.id)
Chatroom.create!(event_id: event10.id)
Chatroom.create!(event_id: event11.id)
Chatroom.create!(event_id: event12.id)
Chatroom.create!(event_id: event13.id)
Chatroom.create!(event_id: event14.id)
Chatroom.create!(event_id: event15.id)

puts "chatrooms successfully created!"

Message.create!(content: "coucou", chatroom_id: chat5.id, event_id: event5.id, user_id: user5.id)


event1_rating1 = EventRating.create(comment: "event au top", rating: 4, user: user1, event: event1)
event1_rating1.save
event1_rating2 = EventRating.create(comment: "evenement agréable, la musique était bonne", rating: 3, user: user2, event: event1)
event1_rating2.save
event1_rating3 = EventRating.create(comment: "J'y suis aller avec mon époux, nous avons passer un bon moment et rencontré de belles personnes", rating: 4, user: user3, event: event1)
event1_rating3.save
event1_rating4 = EventRating.create(comment: "Mes amis m'ont partagé cette soirée, j'étais un peu rétissante mais finalement assez surprise", rating: 4, user: user4, event: event1)
event1_rating4.save
event1_rating5 = EventRating.create(comment: "Super event, j'ai pu faire de belles rencontres. ", rating: 4, user: user5, event: event1)
event1_rating5.save

event2_rating1 = EventRating.create(comment: "La soirée était vraiment stimulante et j'ai aimé l'ambiance générale de l'événement. J'ai rencontré des personnes passionnées et j'ai passé un bon moment à discuter avec eux.", rating: 5, user: user1, event: event2)
event2_rating1.save
event2_rating2 = EventRating.create(comment: "La soirée était vraiment bien organisée et j'ai apprécié l'atmosphère chaleureuse et accueillante. J'ai rencontré des gens très engagés et j'ai passé un bon moment.", rating: 3, user: user2, event: event2)
event2_rating2.save
event2_rating3 = EventRating.create(comment: "L'after work de la communauté des engagés était une soirée vraiment inspirante. J'ai rencontré des personnes qui font une réelle différence et qui m'ont donné envie de m'engager davantage dans les causes qui me tiennent à cœur", rating: 5, user: user4, event: event2)
event2_rating3.save
event2_rating4 = EventRating.create(comment: "La soirée était vraiment bien organisée et j'ai apprécié l'atmosphère chaleureuse et accueillante. J'ai rencontré des gens très engagés et j'ai passé un bon moment.", rating: 4, user: user4, event: event2)
event2_rating4.save
event2_rating5 = EventRating.create(comment: "J'y suis aller spontanément et agréablement surprise. J'ai eu l'occasion de rencontrer des gens inspirants et j'ai appris beaucoup de choses nouvelles sur les enjeux sociaux et environnementaux.", rating: 5, user: user5, event: event2)
event2_rating5.save

event3_rating1 = EventRating.create(comment: "Bonne soirée, les humoristes étaient très agreable", rating: 4, user: user6, event: event3)
event3_rating1.save
event3_rating2 = EventRating.create(comment: "Assez cool, j'étais dubitatif mais finalement j'ai bien rigolé", rating: 4, user: user7, event: event3)
event3_rating2.save

event4_rating1 = EventRating.create(comment: "Le brunch était délicieux et l'occasion idéale pour rencontrer d'autres professionnels du e-commerce. J'ai appris beaucoup de choses intéressantes et j'ai hâte d'appliquer ces nouvelles connaissances à mon entreprise", rating: 5, user: user8, event: event4)
event4_rating1.save
event4_rating2 = EventRating.create(comment: "Le choix de conférenciers était exceptionnel et j'ai vraiment apprécié les discussions animées autour des tendances actuelles du e-commerce. C'était une expérience très enrichissante et je recommanderais vivement ce brunch à tous les professionnels de l'e-commerce", rating: 5, user: user9, event: event4)
event4_rating2.save

event5_rating1 = EventRating.create(comment: "Le Wagon est une école fantastique et le Demoday a été la preuve ultime de cela. Les projets étaient innovants et bien conçus, et j'ai eu la chance de rencontrer des gens formidables qui partagent ma passion pour le développement web. Merci à toute l'équipe du Wagon pour cette expérience incroyable.", rating: 5, user: user10, event: event5)
event5_rating1.save
event5_rating2 = EventRating.create(comment: "J'ai assisté au Demoday pour découvrir ce que le Wagon avait à offrir et j'ai été impressionné par ce que j'ai vu. Les étudiants ont présenté des projets incroyables et ont montré une réelle compréhension des compétences nécessaires pour réussir dans l'industrie. C'était vraiment inspirant.", rating: 4, user: user11, event: event5)
event5_rating2.save

event6_rating1 = EventRating.create(comment: "J'ai beaucoup apprécié l'événement Boost ton Réseau. J'ai rencontré de nouvelles personnes intéressantes et j'ai pu échanger des idées et des contacts avec elles. Je recommande vivement cet événement à tous ceux qui cherchent à élargir leur réseau professionnel.", rating: 4, user: user12, event: event6)
event6_rating1.save
event6_rating2 = EventRating.create(comment: "Je n'étais pas sûr de ce que j'allais trouver à l'événement Boost ton Réseau, mais je suis heureux d'avoir franchi le pas. J'ai rencontré des personnes passionnantes et j'ai pu parler de mon travail et de mes projets à un public intéressé. Je recommande cet événement à tous ceux qui cherchent à sortir de leur zone de confort et à élargir leur cercle professionnel.", rating: 5, user: user13, event: event6)
event6_rating2.save

event7_rating1 = EventRating.create(comment: "Heureuse d'avoir participé a cette event, la mususique était excellente", rating: 5, user: user14, event: event7)
event7_rating1.save
event7_rating2 = EventRating.create(comment: "Ce fut un moment mémorable,", rating: 5, user: user15, event: event7)
event7_rating2.save

event8_rating1 = EventRating.create(comment: "Bonne ambiance, je me suis bien amusé, les oeuvres étaient sublimes", rating: 4, user: user16, event: event8)
event8_rating1.save
event8_rating2 = EventRating.create(comment: "L'expostion fut très esthétique et enrichissante", rating: 5, user: user17, event: event8)
event8_rating2.save

event9_rating1 = EventRating.create(comment: "Ce fut une super soirée, la danseuse était très douée", rating: 5, user: user18, event: event9)
event9_rating1.save
event9_rating2 = EventRating.create(comment: "Nous avons découvert cette event avec ma femme, ravi d'avoir pu y assiter. L'univers oriental a été un pure délice", rating: 5, user: user19, event: event9)
event9_rating2.save

event10_rating1 = EventRating.create(comment: "Le char était super, nous avons bien profité de la journée", rating: 5, user: user20, event: event10)
event10_rating1.save
event10_rating2 = EventRating.create(comment: "La journée s'est extrement bien passé, et les décorations du char étaient sublimes", rating: 5, user: user21, event: event10)
event10_rating2.save

event11_rating1 = EventRating.create(comment: "J'y suis aller spontanément et agréablement surprise", rating: 5, user: user22, event: event11)
event11_rating1.save
event11_rating2 = EventRating.create(comment: "J'y suis aller spontanément et agréablement surprise", rating: 5, user: user23, event: event11)
event11_rating2.save

event12_rating1 = EventRating.create(comment: "Le cadre était magnifique et relaxant, et la nourriture était incroyable. J'ai vraiment apprécié la variété de plats et de boissons proposés, ainsi que l'atmosphère conviviale.", rating: 5, user: user24, event: event12)
event12_rating1.save
event12_rating2 = EventRating.create(comment: "Ce pique-nique était exactement ce dont j'avais besoin : un endroit paisible pour se détendre, des amis sympathiques, et une nourriture délicieuse. Je suis heureux d'avoir été invité.", rating: 5, user: user25, event: event12)
event12_rating2.save

event13_rating1 = EventRating.create(comment: "Le séminaire sur le pop art était incroyablement instructif et inspirant. J'ai appris tellement de choses sur les artistes et les mouvements qui ont façonné cette période fascinante de l'histoire de l'art.", rating: 5, user: user26, event: event13)
event13_rating1.save
event13_rating2 = EventRating.create(comment: "C'était génial de voir autant de personnes réunies pour discuter de l'art et de la culture populaire. Le séminaire a suscité des débats intéressants et m'a permis de voir les choses sous un nouvel angle.", rating: 5, user: user27, event: event13)
event13_rating2.save

event14_rating1 = EventRating.create(comment: "C'était une soirée incroyable ! Tout le monde était tellement détendu et heureux de se baigner dans la piscine. Nous avons dansé, ri et passé un moment inoubliable ensemble.", rating: 5, user: user28, event: event14)
event14_rating1.save
event14_rating2 = EventRating.create(comment: "C'était tellement amusant de rencontrer de nouvelles personnes à la pool party. Tout le monde était si sympathique et accueillant, et nous avons fini par passer toute la soirée ensemble", rating: 5, user: user29, event: event14)
event14_rating2.save

event15_rating1 = EventRating.create(comment:"La soirée rencontres était très bien organisée et l'atmosphère était accueillante et amicale. J'ai eu la chance de rencontrer des personnes fascinantes et j'ai passé un bon moment.", rating: 5, user: user30, event: event15)
event15_rating1.save
event15_rating2 = EventRating.create(comment: "La soirée rencontres était fantastique. J'ai eu l'occasion de rencontrer des personnes intéressantes et j'ai vraiment apprécié l'atmosphère détendue et amicale de la soirée.", rating: 5, user: user31, event: event15)
event15_rating2.save







cat1 = Category.create(title: "musique", event_id: event1.id)
cat2 = Category.create(title: "danse", event_id: event3.id)
cat3 = Category.create(title: "chant", event_id: event2.id)
cat4 = Category.create(title: "festivals", event_id: event6.id)
cat5 = Category.create(title: "cirque", event_id: event3.id)
cat6 = Category.create(title: "loisirs", event_id: event15.id)
cat7 = Category.create(title: "sorties", event_id: event8.id)
cat8 = Category.create(title: "affaires", event_id: event12.id)
cat9 = Category.create(title: "conférences", event_id: event3.id)
cat10 = Category.create(title: "santé", event_id: event8.id)
cat11 = Category.create(title: "ateliers", event_id: event8.id)
cat12 = Category.create(title: "fête", event_id: event6.id)
cat13 = Category.create(title: "gastronomie", event_id: event6.id)
cat14 = Category.create(title: "sports", event_id: event7.id)
cat15 = Category.create(title: "balades", event_id: event12.id)
cat16 = Category.create(title: "patrimoine", event_id: event11.id)
cat17 = Category.create(title: "voyages", event_id: event2.id)
cat18 = Category.create(title: "nature", event_id: event9.id)
cat19 = Category.create(title: "beauté", event_id: event9.id)
cat20 = Category.create(title: "salons", event_id: event11.id)
cat21 = Category.create(title: "bénévolat", event_id: event5.id)
cat22 = Category.create(title: "jardinage", event_id: event4.id)
cat23 = Category.create(title: "décoration", event_id: event7.id)
cat24 = Category.create(title: "formations", event_id: event10.id)
cat25 = Category.create(title: "livres", event_id: event10.id)
cat26 = Category.create(title: "marchés", event_id: event10.id)
cat27 = Category.create(title: "auto", event_id: event2.id)
cat28 = Category.create(title: "moto", event_id: event13.id)
cat29 = Category.create(title: "bâteau", event_id: event14.id)
cat30 = Category.create(title: "technologie", event_id: event15.id)

puts "categories successfully created!"

puts "Finished!!"
