# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.destroy_all
Service.destroy_all
Listing.destroy_all
ListingCategory.destroy_all
Category.destroy_all
Review.destroy_all
ServiceCategory.destroy_all

valentin = User.create(name: "Valentin", username: "valentinp", password: "password", profession: "student", email: "valentinp@yahoo.com")
yo = User.create(name: "Yo", username: "yop", password: "123qwe", profession: "student", email: "yop@yahoo.com")
alan = User.create(name: "Alan", username: "teemo", password: "chemo", profession: "Mushroom Grower", email: "alanb@yahoo.com")

gaming = Category.create(name: "Gaming")
drawing = Category.create(name: "Drawing")
music = Category.create(name: "Music")




