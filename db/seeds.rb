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

Wig.create(title: "Super Cool Wig", user_id: User.all.sample.id, description: "Very awesome wig", price_per_day: rand(1..40), location: "514 rue Berri")
Wig.create(title: "Panther Wig", user_id: User.all.sample.id, description: "Very cool wig", price_per_day: rand(1..40), location: "7561 rue pie ix")
Wig.create(title: "Eagle Wig", user_id: User.all.sample.id, description: "Very super wig", price_per_day: rand(1..40), location: "631 av Rougemont")
Wig.create(title: "Blonde Wig", user_id: User.all.sample.id, description: "Very excellent wig", price_per_day: rand(1..40), location: "832 rue atwater")
Wig.create(title: "Apostle Wig", user_id: User.all.sample.id, description: "Very extraordinary wig", price_per_day: rand(1..40), location: "632 rue saint-urbain")
Wig.create(title: "New France Wig", user_id: User.all.sample.id, description: "Very simple wig", price_per_day: rand(1..40), location: "412 rue saint-hubert")
Wig.create(title: "Hipster Wig", user_id: User.all.sample.id, description: "Very weird wig", price_per_day: rand(1..40), location: "756 rue frontenac")
Wig.create(title: "Kawaii Wig", user_id: User.all.sample.id, description: "Very strange wig", price_per_day: rand(1..40), location: "931 rue papineau")
Wig.create(title: "Le Wagon Wig", user_id: User.all.sample.id, description: "Very meeeh wig", price_per_day: rand(1..40), location: "734 rue papineau")
Wig.create(title: "Unoriginal Wig", user_id: User.all.sample.id, description: "Very incredible wig", price_per_day: rand(1..40), location: "956 rue berri")
Wig.create(title: "Samurai Wig", user_id: User.all.sample.id, description: "Very average wig", price_per_day: rand(1..40), location: "4252 rue saint paul")
Wig.create(title: "Snob Wig", user_id: User.all.sample.id, description: "Very phenomenal wig", price_per_day: rand(1..40), location: "465 rue marseille")
Wig.create(title: "Etienne's Wig", user_id: User.all.sample.id, description: "Very interesting wig", price_per_day: rand(1..40), location: "348 rue atwater")
Wig.create(title: "Flo's Wig", user_id: User.all.sample.id, description: "Very small wig", price_per_day: rand(1..40), location: "4732 rue saint laurent")
Wig.create(title: "Just a Wig", user_id: User.all.sample.id, description: "Very big wig", price_per_day: rand(1..40), location: "612 rue casgrain")
Wig.create(title: "Animal Wig", user_id: User.all.sample.id, description: "Very fun wig", price_per_day: rand(1..40), location: "954 rue laurier")
Wig.create(title: "Brown Wig", user_id: User.all.sample.id, description: "Very boring wig", price_per_day: rand(1..40), location: "834 rue rosemont")
Wig.create(title: "Orange Wig", user_id: User.all.sample.id, description: "Very controversial wig", price_per_day: rand(1..40), location: "932 rue pie ix")
Wig.create(title: "Purple Wig", user_id: User.all.sample.id, description: "Very inline wig", price_per_day: rand(1..40), location: "854 rue de chambly")
Wig.create(title: "Wow Wig", user_id: User.all.sample.id, description: "Very subpar wig", price_per_day: rand(1..40), location: "342 rue william")





puts "Done"
