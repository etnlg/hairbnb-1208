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

puts "creating 100 users and wigs"

100.times {
  user = User.new
  user.first_name = Faker::Name.first_name
  user.last_name = Faker::Name.last_name
  user.email = Faker::Internet.email(name: user.first_name)
  user.password = Faker::Internet.password(min_length: 8)
  user.save!
  wig = Wig.new
  wig.user_id = user.id.to_i
  wig.title = Faker::Book.title
  wig.description = Faker::Quotes::Chiquito.sentence
  wig.rating = rand(5..50)/10.0
  wig.price_per_day = (wig.rating**5).round
  wig.location = Faker::Movies::HarryPotter.location
  wig.save!
}

puts "Done"
