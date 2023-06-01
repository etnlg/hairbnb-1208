# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"

puts "Destroying everything"

Wig.destroy_all
User.destroy_all

puts "creating 20 users and wigs"

@etienne = User.new(first_name: "Etienne", last_name: "Autriche", email: "etnlg@icloud.com", password: "SeedTest")
@etienne.save!

20.times {
  user = User.new
  user.first_name = ('a'..'z').to_a.shuffle[0] + ('a'..'z').to_a.shuffle[0]+ Faker::Name.first_name
  user.last_name = ('a'..'z').to_a.shuffle[0]+ ('a'..'z').to_a.shuffle[0] + Faker::Name.last_name
  user.email = ('a'..'z').to_a.shuffle[0] + ('a'..'z').to_a.shuffle[0] +Faker::Internet.email(name: user.first_name)
  user.password = ('a'..'z').to_a.shuffle[0] + ('a'..'z').to_a.shuffle[0] + Faker::Internet.password(min_length: 8)
  user.save!
}

image = Rails.root.join("app", "assets", "images", "wigone.jpg")
file = File.open(ActionController::Base.helpers.image_path(image))
wig = Wig.new(title: "Sandy Olsson Wig", user_id: User.all.sample.id, description: "Fan of Grease, you can now look like Sandy", price_per_day: rand(1..40), location: "514 rue Berri")
wig.photo.attach(io: file, filename: "wigone.jpg", content_type: "image/jpg")
wig.save!
wig = Wig.new(title: "Average Joe Wig", user_id: User.all.sample.id, description: "Tired of attracting attention? I got you!", price_per_day: rand(1..40), location: "7561 rue pie ix")
image = Rails.root.join("app", "assets", "images", "wigtwo.jpg")
file = File.open(ActionController::Base.helpers.image_path(image))
wig.photo.attach(io: file, filename: "wigtwo.jpg", content_type: "image/jpg")
wig.save!
wig = Wig.new(title: "Texas Sheriff Wig", user_id: User.all.sample.id, description: "Texas! YIIII AAAH!", price_per_day: rand(1..40), location: "631 av Rougemont")
image = Rails.root.join("app", "assets", "images", "wigthree.jpg")
file = File.open(ActionController::Base.helpers.image_path(image))
wig.photo.attach(io: file, filename: "wigthree.jpg", content_type: "image/jpg")
wig.save!
wig = Wig.new(title: "Blonde Wig", user_id: User.all.sample.id, description: "Wig used in the production of Resident Evil", price_per_day: rand(1..40), location: "832 rue atwater")
image = Rails.root.join("app", "assets", "images", "wigfour.jpg")
file = File.open(ActionController::Base.helpers.image_path(image))
wig.photo.attach(io: file, filename: "wigfour.jpg", content_type: "image/jpg")
wig.save!
wig = Wig.new(title: "Frat Boy Wig", user_id: User.all.sample.id, description: "Frat House Gang", price_per_day: rand(1..40), location: "632 rue saint-urbain")
image = Rails.root.join("app", "assets", "images", "wigfive.jpg")
file = File.open(ActionController::Base.helpers.image_path(image))
wig.photo.attach(io: file, filename: "wigfive.jpg", content_type: "image/jpg")
wig.save!
wig = Wig.new(title: "Severus Snape Wig", user_id: User.all.sample.id, description: "Harry Potttaaah", price_per_day: rand(1..40), location: "412 rue saint-hubert")
image = Rails.root.join("app", "assets", "images", "wigsix.jpg")
file = File.open(ActionController::Base.helpers.image_path(image))
wig.photo.attach(io: file, filename: "wigsix.jpg", content_type: "image/jpg")
wig.save!
wig = Wig.new(title: "Brown Wig", user_id: User.all.sample.id, description: "Regular brown wig", price_per_day: rand(1..40), location: "756 rue frontenac")
image = Rails.root.join("app", "assets", "images", "wigseven.jpg")
file = File.open(ActionController::Base.helpers.image_path(image))
wig.photo.attach(io: file, filename: "wigseven.jpg", content_type: "image/jpg")
wig.save!
wig = Wig.new(title: "KISS Wig", user_id: User.all.sample.id, description: "I love kiss ❤️", price_per_day: rand(1..40), location: "931 rue papineau")
image = Rails.root.join("app", "assets", "images", "wigeight.jpg")
file = File.open(ActionController::Base.helpers.image_path(image))
wig.photo.attach(io: file, filename: "wigeight.jpg", content_type: "image/jpg")
wig.save!
wig = Wig.new(title: "70s Wig", user_id: User.all.sample.id, description: "70s kid theme party", price_per_day: rand(1..40), location: "734 rue papineau")
image = Rails.root.join("app", "assets", "images", "wignine.jpg")
file = File.open(ActionController::Base.helpers.image_path(image))
wig.photo.attach(io: file, filename: "wignine.jpg", content_type: "image/jpg")
wig.save!
wig = Wig.new(title: "Young Hallyday Wig", user_id: User.all.sample.id, description: "Que je t'aime!", price_per_day: rand(1..40), location: "956 rue berri")
image = Rails.root.join("app", "assets", "images", "wigten.jpg")
file = File.open(ActionController::Base.helpers.image_path(image))
wig.photo.attach(io: file, filename: "wigten.jpg", content_type: "image/jpg")
wig.save!
wig = Wig.new(title: "Do you want some candy Wig", user_id: User.all.sample.id, description: "Come to my van, I have something for you persona", price_per_day: rand(1..40), location: "4252 rue saint paul")
image = Rails.root.join("app", "assets", "images", "wigeleven.jpg")
file = File.open(ActionController::Base.helpers.image_path(image))
wig.photo.attach(io: file, filename: "wigeleven.jpg", content_type: "image/jpg")
wig.save!
wig = Wig.new(title: "Frizzy Wig", user_id: User.all.sample.id, description: "Frizzzzy frisky wig", price_per_day: rand(1..40), location: "465 rue marseille")
image = Rails.root.join("app", "assets", "images", "wig12.jpg")
file = File.open(ActionController::Base.helpers.image_path(image))
wig.photo.attach(io: file, filename: "wig12.jpg", content_type: "image/jpg")
wig.save!
wig = Wig.new(title: "LMFAO Wig", user_id: User.all.sample.id, description: "Im **** and I know it", price_per_day: rand(1..40), location: "348 rue atwater")
image = Rails.root.join("app", "assets", "images", "wig13.jpg")
file = File.open(ActionController::Base.helpers.image_path(image))
wig.photo.attach(io: file, filename: "wig13.jpg", content_type: "image/jpg")
wig.save!
wig = Wig.new(title: "Skunk Wig", user_id: User.all.sample.id, description: "Easy to install, for quick in and out", price_per_day: rand(1..40), location: "4732 rue saint laurent")
image = Rails.root.join("app", "assets", "images", "wig14.jpg")
file = File.open(ActionController::Base.helpers.image_path(image))
wig.photo.attach(io: file, filename: "wig14.jpg", content_type: "image/jpg")
wig.save!
wig = Wig.new(title: "The Rock Wig", user_id: User.all.sample.id, description: "What is the Rock's cooking", price_per_day: rand(1..40), location: "612 rue casgrain")
image = Rails.root.join("app", "assets", "images", "wig15.jpg")
file = File.open(ActionController::Base.helpers.image_path(image))
wig.photo.attach(io: file, filename: "wig15.jpg", content_type: "image/jpg")
wig.save!
wig = Wig.new(title: "Afro Wig", user_id: User.all.sample.id, description: "Disco balls, heels", price_per_day: rand(1..40), location: "954 rue laurier")
image = Rails.root.join("app", "assets", "images", "wig16.jpg")
file = File.open(ActionController::Base.helpers.image_path(image))
wig.photo.attach(io: file, filename: "wig16.jpg", content_type: "image/jpg")
wig.save!
wig = Wig.new(title: "Mullet Wig", user_id: User.all.sample.id, description: "Coupe Longueuil", price_per_day: rand(1..40), location: "834 rue rosemont")
image = Rails.root.join("app", "assets", "images", "wig17.jpg")
file = File.open(ActionController::Base.helpers.image_path(image))
wig.photo.attach(io: file, filename: "wig17.jpg", content_type: "image/jpg")
wig.save!
wig = Wig.new(title: "Punk Rock Wig", user_id: User.all.sample.id, description: "Too much gel? Its never too much", price_per_day: rand(1..40), location: "932 rue pie ix")
image = Rails.root.join("app", "assets", "images", "wig18.jpg")
file = File.open(ActionController::Base.helpers.image_path(image))
wig.photo.attach(io: file, filename: "wig18.jpg", content_type: "image/jpg")
wig.save!
wig = Wig.new(title: "Disco Wig", user_id: User.all.sample.id, description: "Disco vibe and flashy clothes", price_per_day: rand(1..40), location: "854 rue de chambly")
image = Rails.root.join("app", "assets", "images", "wig19.jpg")
file = File.open(ActionController::Base.helpers.image_path(image))
wig.photo.attach(io: file, filename: "wig19.jpg", content_type: "image/jpg")
wig.save!
@thewig = Wig.new(title: "Dustin Henderson's Wig", user_id: @etienne.id, description: "Dustin, 30 years later", price_per_day: rand(1..40), location: "342 rue william")
image = Rails.root.join("app", "assets", "images", "wig20.jpg")
file = File.open(ActionController::Base.helpers.image_path(image))
@thewig.photo.attach(io: file, filename: "wig20.jpg", content_type: "image/jpg")
@thewig.save!


8.times {
  Booking.create(start_date: Time.new(2023, 7, 7), end_date: Time.new(2023, 7, 8), wig_id: @thewig.id, user_id: User.all.sample.id, satuts: 'pending')
}



puts "Done"
