# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

20.times do
city = City.create(name: Faker::Address.city, zip_code: Faker::Address.zip_code)
end

100.times do
specialities_array = ["surgeon","optometrist","pediatrician","gynecologist","physioterapist","nursery"]
doctor = Doctor.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, zip_code: Faker::Address.zip_code, city: City.all.sample)
patient = Patient.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
speciality = Speciality.create!(specialities_array.sample) 
appointment = Appointment.create!(Faker::Date.forward(days: 120))
end

