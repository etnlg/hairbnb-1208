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
wig = Wig.new(title: "Super Cool Wig", user_id: User.all.sample.id, description: "Very awesome wig", price_per_day: rand(1..40), location: "514 rue Berri")
wig.photo.attach(io: file, filename: "wigone.jpg", content_type: "image/jpg")
wig.save!
wig = Wig.new(title: "Panther Wig", user_id: User.all.sample.id, description: "Very cool wig", price_per_day: rand(1..40), location: "7561 rue pie ix")
image = Rails.root.join("app", "assets", "images", "wigtwo.jpg")
file = File.open(ActionController::Base.helpers.image_path(image))
wig.photo.attach(io: file, filename: "wigtwo.jpg", content_type: "image/jpg")
wig.save!
wig = Wig.new(title: "Eagle Wig", user_id: User.all.sample.id, description: "Very super wig", price_per_day: rand(1..40), location: "631 av Rougemont")
image = Rails.root.join("app", "assets", "images", "wigthree.jpg")
file = File.open(ActionController::Base.helpers.image_path(image))
wig.photo.attach(io: file, filename: "wigthree.jpg", content_type: "image/jpg")
wig.save!
wig = Wig.new(title: "Blonde Wig", user_id: User.all.sample.id, description: "Very excellent wig", price_per_day: rand(1..40), location: "832 rue atwater")
image = Rails.root.join("app", "assets", "images", "wigfour.jpg")
file = File.open(ActionController::Base.helpers.image_path(image))
wig.photo.attach(io: file, filename: "wigfour.jpg", content_type: "image/jpg")
wig.save!
wig = Wig.new(title: "Apostle Wig", user_id: User.all.sample.id, description: "Very extraordinary wig", price_per_day: rand(1..40), location: "632 rue saint-urbain")
image = Rails.root.join("app", "assets", "images", "wigfive.jpg")
file = File.open(ActionController::Base.helpers.image_path(image))
wig.photo.attach(io: file, filename: "wigfive.jpg", content_type: "image/jpg")
wig.save!
wig = Wig.new(title: "New France Wig", user_id: User.all.sample.id, description: "Very simple wig", price_per_day: rand(1..40), location: "412 rue saint-hubert")
image = Rails.root.join("app", "assets", "images", "wigsix.jpg")
file = File.open(ActionController::Base.helpers.image_path(image))
wig.photo.attach(io: file, filename: "wigsix.jpg", content_type: "image/jpg")
wig.save!
wig = Wig.new(title: "Hipster Wig", user_id: User.all.sample.id, description: "Very weird wig", price_per_day: rand(1..40), location: "756 rue frontenac")
image = Rails.root.join("app", "assets", "images", "wigseven.jpg")
file = File.open(ActionController::Base.helpers.image_path(image))
wig.photo.attach(io: file, filename: "wigseven.jpg", content_type: "image/jpg")
wig.save!
wig = Wig.new(title: "Kawaii Wig", user_id: User.all.sample.id, description: "Very strange wig", price_per_day: rand(1..40), location: "931 rue papineau")
image = Rails.root.join("app", "assets", "images", "wigeight.jpg")
file = File.open(ActionController::Base.helpers.image_path(image))
wig.photo.attach(io: file, filename: "wigeight.jpg", content_type: "image/jpg")
wig.save!
wig = Wig.new(title: "Le Wagon Wig", user_id: User.all.sample.id, description: "Very meeeh wig", price_per_day: rand(1..40), location: "734 rue papineau")
image = Rails.root.join("app", "assets", "images", "wignine.jpg")
file = File.open(ActionController::Base.helpers.image_path(image))
wig.photo.attach(io: file, filename: "wignine.jpg", content_type: "image/jpg")
wig.save!
wig = Wig.new(title: "Unoriginal Wig", user_id: User.all.sample.id, description: "Very incredible wig", price_per_day: rand(1..40), location: "956 rue berri")
image = Rails.root.join("app", "assets", "images", "wigten.jpg")
file = File.open(ActionController::Base.helpers.image_path(image))
wig.photo.attach(io: file, filename: "wigten.jpg", content_type: "image/jpg")
wig.save!
wig = Wig.new(title: "Samurai Wig", user_id: User.all.sample.id, description: "Very average wig", price_per_day: rand(1..40), location: "4252 rue saint paul")
image = Rails.root.join("app", "assets", "images", "wigeleven.jpg")
file = File.open(ActionController::Base.helpers.image_path(image))
wig.photo.attach(io: file, filename: "wigeleven.jpg", content_type: "image/jpg")
wig.save!
wig = Wig.new(title: "Snob Wig", user_id: User.all.sample.id, description: "Very phenomenal wig", price_per_day: rand(1..40), location: "465 rue marseille")
image = Rails.root.join("app", "assets", "images", "wig12.jpg")
file = File.open(ActionController::Base.helpers.image_path(image))
wig.photo.attach(io: file, filename: "wig12.jpg", content_type: "image/jpg")
wig.save!
wig = Wig.new(title: "Etienne's Wig", user_id: User.all.sample.id, description: "Very interesting wig", price_per_day: rand(1..40), location: "348 rue atwater")
image = Rails.root.join("app", "assets", "images", "wig13.jpg")
file = File.open(ActionController::Base.helpers.image_path(image))
wig.photo.attach(io: file, filename: "wig13.jpg", content_type: "image/jpg")
wig.save!
wig = Wig.new(title: "Flo's Wig", user_id: User.all.sample.id, description: "Very small wig", price_per_day: rand(1..40), location: "4732 rue saint laurent")
image = Rails.root.join("app", "assets", "images", "wig14.jpg")
file = File.open(ActionController::Base.helpers.image_path(image))
wig.photo.attach(io: file, filename: "wig14.jpg", content_type: "image/jpg")
wig.save!
wig = Wig.new(title: "Just a Wig", user_id: User.all.sample.id, description: "Very big wig", price_per_day: rand(1..40), location: "612 rue casgrain")
image = Rails.root.join("app", "assets", "images", "wig15.jpg")
file = File.open(ActionController::Base.helpers.image_path(image))
wig.photo.attach(io: file, filename: "wig15.jpg", content_type: "image/jpg")
wig.save!
wig = Wig.new(title: "Animal Wig", user_id: User.all.sample.id, description: "Very fun wig", price_per_day: rand(1..40), location: "954 rue laurier")
image = Rails.root.join("app", "assets", "images", "wig16.jpg")
file = File.open(ActionController::Base.helpers.image_path(image))
wig.photo.attach(io: file, filename: "wig16.jpg", content_type: "image/jpg")
wig.save!
wig = Wig.new(title: "Brown Wig", user_id: User.all.sample.id, description: "Very boring wig", price_per_day: rand(1..40), location: "834 rue rosemont")
image = Rails.root.join("app", "assets", "images", "wig17.jpg")
file = File.open(ActionController::Base.helpers.image_path(image))
wig.photo.attach(io: file, filename: "wig17.jpg", content_type: "image/jpg")
wig.save!
wig = Wig.new(title: "Orange Wig", user_id: User.all.sample.id, description: "Very controversial wig", price_per_day: rand(1..40), location: "932 rue pie ix")
image = Rails.root.join("app", "assets", "images", "wig18.jpg")
file = File.open(ActionController::Base.helpers.image_path(image))
wig.photo.attach(io: file, filename: "wig18.jpg", content_type: "image/jpg")
wig.save!
wig = Wig.new(title: "Purple Wig", user_id: User.all.sample.id, description: "Very inline wig", price_per_day: rand(1..40), location: "854 rue de chambly")
image = Rails.root.join("app", "assets", "images", "wig19.jpg")
file = File.open(ActionController::Base.helpers.image_path(image))
wig.photo.attach(io: file, filename: "wig19.jpg", content_type: "image/jpg")
wig.save!
@thewig = Wig.new(title: "Wow Wig", user_id: @etienne.id, description: "Very subpar wig", price_per_day: rand(1..40), location: "342 rue william")
image = Rails.root.join("app", "assets", "images", "wig20.jpg")
file = File.open(ActionController::Base.helpers.image_path(image))
@thewig.photo.attach(io: file, filename: "wig20.jpg", content_type: "image/jpg")
@thewig.save!


8.times {
  Booking.create(start_date: Time.new(2023, 7, 7), end_date: Time.new(2023, 7, 8), wig_id: @thewig.id, user_id: User.all.sample.id, satuts: 'pending')
}



puts "Done"
