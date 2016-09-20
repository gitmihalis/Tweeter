# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(name:  "Admin User",
             email: "example@railstutorial.org",
             password:              "foobar",
             password_confirmation: "foobar",
             admin: true,
             activated: true,
             activated_at: Time.zone.now)

99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password,
               activated: true,
               activated_at: Time.zone.now)
end

users = User.order(:created_at).take(6)
50.times do
  content = Faker::Lorem.sentence(5)
  users.each { |user| user.microposts.create!(content: content) }
end

# Following relationships
users = User.all
user = users.first
follwing = users[2..50]
followers = users[3..40]
follwing.each { |followed| user.follow(followed) }
followers.each { |follower| follower.follow(user) }

# Favorites
users = User.all
favoriting_users = users[2..23]
unowned_posts = Micropost.where(user_id:1).or( Micropost.where(user_id:2) )
20.times do |n|
  favoriting_users.each { |user| user.fav(unowned_posts[n+1])}
end

user = User.first
4.times do |n|
  micropost = Micropost.find(n + 1)
  user.fav(micropost)
end

