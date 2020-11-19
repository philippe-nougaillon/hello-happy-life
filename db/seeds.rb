# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Organisation.create(nom: "Reynolds Industries")

Activité.create([{ nom: "Running" }, { nom: "Yoga" }, { nom: "Marche nordique" }, { nom: "Chess Boxing" }, { nom: "Danse de salon" }, { nom: "Pilate" } ])

User.create(organisation_id: 1, admin: true, email: "philippe.nougaillon@gmail.com", password: "0123456", password_confirmation: "0123456")
User.create(organisation_id: 1, admin: true, email: "richard.vonkat@gmail.com", password: "0123456", password_confirmation: "0123456")

Groupe.create(organisation_id: 1, activité_id: 1, nom: "Courir ensemble sur le parvis, le lundi midi")
Groupe.create(organisation_id: 1, activité_id: 3, nom: "Marche en forêt")
Groupe.create(organisation_id: 1, activité_id: 4, nom: "Chess-boxing Club")
Groupe.create(organisation_id: 1, activité_id: 6, nom: "Vas-y, ponce !")
Groupe.create(organisation_id: 1, activité_id: 2, nom: "Méditation Express")
Groupe.create(organisation_id: 1, activité_id: 5, nom: "Salsa et danses latino, Rock, West Coast Swing, Line dance, Disco... Venez danser au soleil au pieds des oeuvres d'art !")
