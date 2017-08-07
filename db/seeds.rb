# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Patient.destroy_all
Doctor.destroy_all
User.destroy_all
user1= User.create!(email:"boluogunnaike@gmail.com", password: 123456)
user2 = User.create!(email:"kolaogunnaike@gmail.com", password: 123456)
#doctor
doctor1 = Doctor.create!(name:"Kola Ogunnaike", user:user1)
doctor2 = Doctor.create!(name:"Bolu Ogunseye", user:user2)
#patient
patient1 = Patient.create!(name:"Okare dumelo", sex:"female", insurance_N0:"1234", doctor:doctor2)
patient2 = Patient.create!(name:"ingedion ohion", sex:"male", insurance_N0:"1234", doctor:doctor2)
patient3 = Patient.create!(name:"Adams ohion", sex:"male", insurance_N0:"1234", doctor:doctor1)
patient4 = Patient.create!(name:"ingedion tiod", sex:"female", insurance_N0:"1234", doctor:doctor1)
