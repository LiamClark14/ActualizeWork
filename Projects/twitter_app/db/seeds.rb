# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Tweet.create!(text: "Omg!", user_id: 1)
Tweet.create!(text: "Get outta town!", user_id: 1)
Tweet.create!(text: "You'll never make it in this world", user_id: 2)
Tweet.create!(text: "Wow!", user_id: 1)

User.create!(username: "liamclark14", email: "liam@example.com")
User.create!(username: "tegethetitan", email: "tyler@example.com")
