# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user1 = User.create(name: "Bill", email: "Bill@mail.com", password: "password")
user2 = User.create(name: "Jill", email: "Jill@mail.com", password: "password")
user3 = User.create(name: "Joe", email: "Joe@mail.com", password: "password")
user4 = User.create(name: "Henry", email: "Henry@mail.com", password: "password")
50.times do |counter|
  name = Faker::HarryPotter.character
  User.create!(name: name, skills: Faker::ChuckNorris.fact, profession: Faker::Job.title, email: (name.split(" ")[0]+counter.to_s+"@mail.com"), about_me: Faker::GameOfThrones.quote, password: "password")
end

types = ["dance", "music", "art"]
50.times do
  content = Faker::Lorem.sentence(5)
  User.all.each { |user| user.activities.create!(picture: Faker::LoremPixel.image("50x60"), activity_name: Faker::GameOfThrones.quote, content: content, category: types[rand(2)], cost: rand(500), city: Faker::Address.city, state: Faker::Address.state, addressLN1: Faker::Address.street_address, zip: Faker::Address.zip) }
end

User.all.each do |user|
  user.activities.each do |activity|
    Rating.create(user_id: user.id, activity_id: activity.id, stars: (1+rand(5)), comment: Faker::ChuckNorris.fact)
  end
end
