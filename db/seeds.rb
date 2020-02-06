# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Dog.destroy_all
Dogsitter.destroy_all
Stroll.destroy_all
City.destroy_all

10.loop do
  City.create(name: Faker::Address.city)
end
Dog.create(name:"Rex", city_id: City.first.id)

Dogsitter.create(first_name:"Jean-Michel", last_name:"Promeneur", city_id: City.first.id)

Stroll.create(dogsitter_id: Dogsitter.first.id, dog_id: Dog.first.id)
