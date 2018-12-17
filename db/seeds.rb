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

50.times do
  content = Faker::Lorem.sentence(5)
  User.all.each { |user| user.activities.create!(content: content) }
end
