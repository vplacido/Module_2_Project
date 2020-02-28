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
ListingCategory.delete_all
Category.delete_all
Review.delete_all
ServiceCategory.delete_all

u1 = User.create(name: "Valentin", username: "valentinp", address: "address", profession: "student", email: "valentinp@yahoo.com")
u2 = User.create(name: "Yo", username: "yop", address: "123qwe", profession: "student", email: "yop@yahoo.com")
u3 = User.create(name: "Alan", username: "teemo", address: "chemo", profession: "Mushroom Grower", email: "alanb@yahoo.com")

c1 = Category.create(name: "Gaming")
c2 = Category.create(name: "Drawing")
c3 = Category.create(name: "Music")


# lc1 = ListingCategory.create(listing_id: 1, category_id: 1)
# lc2 = ListingCategory.create(listing_id: 2, category_id: 2)
# lc3 = ListingCategory.create(listing_id: 3, category_id: 3)

l1 = Listing.create(user_id: u1.id, title: "Elo boost", description: "I need a pro to boost my rank", time_frame: "2 days", price: 200.00, packages: true)
l2 = Listing.create(user_id: u2.id, title: "Draw family", description: "I need someone to draw my family portrait", time_frame: "1 day", price: 210.00, packages: true)
l3 = Listing.create(user_id: u3.id, title: "Sing me a song", description: "Do a cover of Ocean Eyes", time_frame: "10 hours", price: 20.00, packages: false)

lc1 = ListingCategory.create(listing_id: l1.id, category_id: c3.id)
lc2 = ListingCategory.create(listing_id: l2.id, category_id: c2.id)
lc3 = ListingCategory.create(listing_id: l3.id, category_id: c1.id)


r1 = Review.create(listing_id: l1.id, description: "Need to get some vocal lessons...", rating: 1.00)
r2 = Review.create(listing_id: l2.id, description: "Amazing drawing skills!", rating: 4.00)
r3 = Review.create(listing_id: l3.id, description: "This guy's legit", rating: 5.00)

# sc1 = ServiceCategory.create(service_id: 1, category_id: 1)
# sc1 = ServiceCategory.create(service_id: 2, category_id: 2)
# sc1 = ServiceCategory.create(service_id: 3, category_id: 3)

s1 = Service.create(title: "Play league", description: "Get to play with a cute girl", time_frame: "1 hour", price: 5.00, seller_id: u1.id)
s2 = Service.create(title: "Paint anything", description: "Ask me anything to paint", time_frame: "2 hours", price: 15.00, seller_id: u2.id)
s3 = Service.create(title: "Making covers", description: "Will do a cover of any song", time_frame: "7 days", price: 50.00, seller_id: u3.id)

sc1 = ServiceCategory.create(service_id: s3.id, category_id: c1.id)
sc1 = ServiceCategory.create(service_id: s2.id, category_id: c2.id)
sc1 = ServiceCategory.create(service_id: s1.id, category_id: c3.id)






## address in user is actually password but we just left it that way because it keeps saying filtered

