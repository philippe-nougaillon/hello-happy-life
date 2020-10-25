# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Organisation.create(nom: "Reynolds Industries")

Activité.create([{ nom: "Running" }, { nom: "Yoga" }, { nom: "Marche nordique" }, { nom: "Echecs" }, { nom: "Danse de salon" }, { nom: "Pilate" } ])

User.create(organisation_id: 1, email: "philippe.nougaillon@gmail.com", password: "0123456", password_confirmation: "0123456")

Groupe.create(organisation_id: 1, activité_id: 1, nom: "Running du dimanche")
Groupe.create(organisation_id: 1, activité_id: 3, nom: "Marche au bois de Vincennes")
Groupe.create(organisation_id: 1, activité_id: 4, nom: "Chess-boxing club")
Groupe.create(organisation_id: 1, activité_id: 6, nom: "Vas-y, ponce !")
