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

Wig.create(title: "Wig 1", user_id: User.all.sample.id, description: "Very cool wig", price_per_day: rand(1..40), location: "Montreal")
Wig.create(title: "Wig 2", user_id: User.all.sample.id, description: "Very cool wig", price_per_day: rand(1..40), location: "Montreal")
Wig.create(title: "Wig 3", user_id: User.all.sample.id, description: "Very cool wig", price_per_day: rand(1..40), location: "Montreal")
Wig.create(title: "Wig 4", user_id: User.all.sample.id, description: "Very cool wig", price_per_day: rand(1..40), location: "Montreal")
Wig.create(title: "Wig 5", user_id: User.all.sample.id, description: "Very cool wig", price_per_day: rand(1..40), location: "Montreal")
Wig.create(title: "Wig 6", user_id: User.all.sample.id, description: "Very cool wig", price_per_day: rand(1..40), location: "Montreal")
Wig.create(title: "Wig 7", user_id: User.all.sample.id, description: "Very cool wig", price_per_day: rand(1..40), location: "Montreal")
Wig.create(title: "Wig 8", user_id: User.all.sample.id, description: "Very cool wig", price_per_day: rand(1..40), location: "Montreal")
Wig.create(title: "Wig 9", user_id: User.all.sample.id, description: "Very cool wig", price_per_day: rand(1..40), location: "Montreal")
Wig.create(title: "Wig 10", user_id: User.all.sample.id, description: "Very cool wig", price_per_day: rand(1..40), location: "Montreal")
Wig.create(title: "Wig 11", user_id: User.all.sample.id, description: "Very cool wig", price_per_day: rand(1..40), location: "Montreal")
Wig.create(title: "Wig 12", user_id: User.all.sample.id, description: "Very cool wig", price_per_day: rand(1..40), location: "Montreal")
Wig.create(title: "Wig 13", user_id: User.all.sample.id, description: "Very cool wig", price_per_day: rand(1..40), location: "Montreal")
Wig.create(title: "Wig 14", user_id: User.all.sample.id, description: "Very cool wig", price_per_day: rand(1..40), location: "Montreal")
Wig.create(title: "Wig 15", user_id: User.all.sample.id, description: "Very cool wig", price_per_day: rand(1..40), location: "Montreal")
Wig.create(title: "Wig 16", user_id: User.all.sample.id, description: "Very cool wig", price_per_day: rand(1..40), location: "Montreal")
Wig.create(title: "Wig 17", user_id: User.all.sample.id, description: "Very cool wig", price_per_day: rand(1..40), location: "Montreal")
Wig.create(title: "Wig 18", user_id: User.all.sample.id, description: "Very cool wig", price_per_day: rand(1..40), location: "Montreal")
Wig.create(title: "Wig 19", user_id: User.all.sample.id, description: "Very cool wig", price_per_day: rand(1..40), location: "Montreal")
Wig.create(title: "Wig 20", user_id: User.all.sample.id, description: "Very cool wig", price_per_day: rand(1..40), location: "Montreal")





puts "Done"
