# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(name: "Gemma", nationality: "Kirke", email: "gemma@kirke.me")

	user1.vehicles.create(model: "Ford Focus", year: 2018, chassis_number: 123456789, color: "Black", registration_date: "02/02/2018 00:00:00", odometer_reading: 30000)

user2 = User.create(name: "Jane Thomas", nationality: "Australia", email: "jane@thomas.me")

	user2.vehicles.create(model: "Audi A4", year: 2020, chassis_number: 999999999, color: "Green", registration_date: "02/01/2019  00:00:00", odometer_reading: 25000)

user3 = User.create(name: "Sam Johns", nationality: "Belgium", email: "sam@johns.me")

	user3.vehicles.create(model: "BMW 4 Series", year: 2017, chassis_number: 111111111, color: "White", registration_date: "05/01/2020  00:00:00", odometer_reading: 34000)

user4 = User.create(name: "Mehdi", nationality: "Elabd", email: "mehdi@elabd.me")

	user4.vehicles.create(model: "LEXUS IS 3000", year: 2011, chassis_number: 222222222, color: "Black", registration_date: "02/01/2019  00:00:00", odometer_reading: 12300)

user5 = User.create(name: "Gemma", nationality: "Kirke", email: "gemma@kirke.me")

	user5.vehicles.create(model: "INFINITI JX35", year: 2011, chassis_number: 444444444, color: "Black", registration_date: "02/01/2019  00:00:00", odometer_reading: 12000)

user6 = User.create(name: "Jeni", nationality: "Mohan", email: "jeni@mohan.me")

	user6.vehicles.create(model: "Audi A4", year: 2018, chassis_number: 555555555, color: "White", registration_date: "05/04/2020  00:00:00", odometer_reading: 123000)

user7 = User.create(name: "Joseph", nationality: "Sasank", email: "joseph@sasank.me")

	user7.vehicles.create(model: "Ford Focus", year: 2020, chassis_number: 888888888, color: "Black", registration_date: "02/11/2019  00:00:00", odometer_reading: 34000)

