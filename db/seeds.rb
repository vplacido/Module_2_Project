# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.delete_all
Service.delete_all
Listing.delete_all
Category.delete_all
Review.delete_all
ServiceCategory.delete_all
Cart.delete_all

# u1 = User.create(name: "Valentin", username: "valentinp", password_digest: "password", profession: "student", email: "valentinp@yahoo.com")
# u2 = User.create(name: "Yo", username: "yop", password_digest: "123qwe", profession: "student", email: "yop@yahoo.com")
# u3 = User.create(name: "Alan", username: "teemo", password_digest: "chemo", profession: "Mushroom Grower", email: "alanb@yahoo.com")

u1 = User.create(name: "Valentin", username: "valentinp", password: "password", profession: "student", email: "valentinp@yahoo.com")
u2 = User.create(name: "Yo", username: "yop", password: "123qwe", profession: "student", email: "yop@yahoo.com")
u3 = User.create(name: "Alan", username: "teemo", password: "chemo", profession: "Mushroom Grower", email: "alanb@yahoo.com")
u4 = User.create(name: "Carl", username: "carl", password: "carlll", profession: "Professional Golfer", email: "carlwoods@yahoo.com")
u5 = User.create(name: "Bri", username: "brit", password: "brittt", profession: "Book Writer", email: "brit@yahoo.com" )
u6 = User.create(name: "Paul", username: "paulk", password: "paulll", profession: "Bass Guitarist", email: "pkimbap@yahoo.com")
u7 = User.create(name: "Wesley", username: "wesleyc", password: "wesss", profession: "Sushi Chef", email: "masterchefwes@yahoo.com")
u8 = User.create(name: "Ryan", username: "ryanw", password: "ryannn", profession: "Boxer", email: "gopher@yahoo.com")
u9 = User.create(name: "Lauren", username: "laureny", password: "laurennn", profession: "Tutor", email: "yuneedtolearn@yahoo.com")
# u10 = User.create(name: "Ryan", username: "ryanw", password: "ryannn", profession: "Boxer", email: "gopher@yahoo.com")





c1 = Category.create(name: "Gaming")
c2 = Category.create(name: "Drawing")
c3 = Category.create(name: "Music")
c4 = Category.create(name: "Food")
c5 = Category.create(name: "Sport")
c6 = Category.create(name: "Education")


# lc1 = ListingCategory.create(listing_id: 1, category_id: 1)
# lc2 = ListingCategory.create(listing_id: 2, category_id: 2)
# lc3 = ListingCategory.create(listing_id: 3, category_id: 3)

l1 = Listing.create(user_id: u1.id, title: "Elo boost", description: "I need a pro to boost my rank", time_frame: "2 days", price: 200.00)
l2 = Listing.create(user_id: u2.id, title: "Draw family", description: "I need someone to draw my family portrait", time_frame: "1 day", price: 210.00)
l3 = Listing.create(user_id: u3.id, title: "Sing me a song", description: "Do a cover of Ocean Eyes", time_frame: "10 hours", price: 20.00)
l4 = Listing.create(user_id: u7.id, title: "Bass Guitarist Needed", description: "Cover the bass guitar line for Get Lucky", time_frame: "15 hours", price: 40.00)
l5 = Listing.create(user_id: u2.id, title: "Mokbang", description: "I want to watch someone live octopus with asmr mic", time_frame: "1 hour", price: 10.00)



# lc1 = ListingCategory.create(listing_id: l1.id, category_id: c3.id)
# lc2 = ListingCategory.create(listing_id: l2.id, category_id: c2.id)
# lc3 = ListingCategory.create(listing_id: l3.id, category_id: c1.id)
# lc4 = ListingCategory.create(listing_id: l4.id, category_id: c3.id)
# lc5 = ListingCategory.create(listing_id: l5.id, category_id: c4.id)





s1 = Service.create(title: "Play league", description: "Get to play with a cute girl", time_frame: "1 hour", price: 5.00, seller_id: u9.id)
s2 = Service.create(title: "Paint anything", description: "Ask me anything to paint", time_frame: "2 hours", price: 15.00, seller_id: u8.id)
s3 = Service.create(title: "Making covers", description: "Will do a cover of any song", time_frame: "7 days", price: 50.00, seller_id: u7.id)
s4 = Service.create(title: "Food Porn", description: "Will eat anything", time_frame: "2 hours", price: 50.00, seller_id: u7.id)
s5 = Service.create(title: "Bass", description: "Will play bass lines", time_frame: "2 hours", price: 90.00, seller_id: u6.id)





sc1 = ServiceCategory.create(service_id: s3.id, category_id: c3.id)
sc2 = ServiceCategory.create(service_id: s2.id, category_id: c2.id)
sc3 = ServiceCategory.create(service_id: s1.id, category_id: c1.id)
sc4 = ServiceCategory.create(service_id: s4.id, category_id: c4.id)
sc5 = ServiceCategory.create(service_id: s5.id, category_id: c3.id)


    

r1 = Review.create(service_id: s3.id, user_id: u1.id, description: "Need to get some vocal lessons...", rating: 1.00)
r2 = Review.create(service_id: s2.id, user_id: u3.id, description: "Amazing drawing skills!", rating: 4.00)
r3 = Review.create(service_id: s1.id, user_id: u2.id, description: "Amazing personality and carried my games", rating: 5.00)
r4 = Review.create(service_id: s4.id, user_id: u1.id, description: "Savage", rating: 5.00)
r5 = Review.create(service_id: s5.id, user_id: u8.id, description: "Great bass skills", rating: 5.00)

c1 = Cart.create(user_id: u4.id, service_id: s1.id)
c2 = Cart.create(user_id: u7.id, service_id: s2.id)
c3 = Cart.create(user_id: u6.id, service_id: s3.id)

# sc1 = ServiceCategory.create(service_id: 1, category_id: 1)
# sc1 = ServiceCategory.create(service_id: 2, category_id: 2)
# sc1 = ServiceCategory.create(service_id: 3, category_id: 3)








## address in user is actually password but we just left it that way because it keeps saying filtered

