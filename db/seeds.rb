# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Destroying everything"

Wig.destroy_all
User.destroy_all

puts "creating 20 users and wigs"

20.times {
  user = User.new
  user.first_name = ('a'..'z').to_a.shuffle[0] + ('a'..'z').to_a.shuffle[0]+ Faker::Name.first_name
  user.last_name = ('a'..'z').to_a.shuffle[0]+ ('a'..'z').to_a.shuffle[0] + Faker::Name.last_name
  user.email = ('a'..'z').to_a.shuffle[0] + ('a'..'z').to_a.shuffle[0] +Faker::Internet.email(name: user.first_name)
  user.password = ('a'..'z').to_a.shuffle[0] + ('a'..'z').to_a.shuffle[0] + Faker::Internet.password(min_length: 8)
  user.save!
  # wig = Wig.new
  # wig.user_id = user.id.to_i
  # wig.title = Faker::Book.title
  # wig.description = Faker::Quotes::Chiquito.sentence
  # wig.price_per_day = rand(100..2000)
  # wig.location = Faker::Movies::HarryPotter.location
  # wig.save!
}

Wig.create(title: "Wig 1", description: "Very cool wig", price_per_day: 10, location: "Montreal")
Wig.create(title: "Wig 2", description: "Very cool wig", price_per_day: 20, location: "Montreal")
Wig.create(title: "Wig 3", description: "Very cool wig", price_per_day: 30, location: "Montreal")
Wig.create(title: "Wig 4", description: "Very cool wig", price_per_day: 25, location: "Montreal")
Wig.create(title: "Wig 5", description: "Very cool wig", price_per_day: 15, location: "Montreal")
Wig.create(title: "Wig 6", description: "Very cool wig", price_per_day: 35, location: "Montreal")
Wig.create(title: "Wig 7", description: "Very cool wig", price_per_day: 40, location: "Montreal")
Wig.create(title: "Wig 8", description: "Very cool wig", price_per_day: 50, location: "Montreal")
Wig.create(title: "Wig 9", description: "Very cool wig", price_per_day: 55, location: "Montreal")
Wig.create(title: "Wig 10", description: "Very cool wig", price_per_day: 45, location: "Montreal")
Wig.create(title: "Wig 11", description: "Very cool wig", price_per_day: 12, location: "Montreal")
Wig.create(title: "Wig 12", description: "Very cool wig", price_per_day: 26, location: "Montreal")
Wig.create(title: "Wig 13", description: "Very cool wig", price_per_day: 17, location: "Montreal")
Wig.create(title: "Wig 14", description: "Very cool wig", price_per_day: 9, location: "Montreal")
Wig.create(title: "Wig 15", description: "Very cool wig", price_per_day: 32, location: "Montreal")
Wig.create(title: "Wig 16", description: "Very cool wig", price_per_day: 29, location: "Montreal")
Wig.create(title: "Wig 17", description: "Very cool wig", price_per_day: 7, location: "Montreal")
Wig.create(title: "Wig 18", description: "Very cool wig", price_per_day: 14, location: "Montreal")
Wig.create(title: "Wig 19", description: "Very cool wig", price_per_day: 19, location: "Montreal")
Wig.create(title: "Wig 20", description: "Very cool wig", price_per_day: 22, location: "Montreal")





puts "Done"
