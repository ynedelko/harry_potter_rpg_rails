# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Area.create([
  {name: "Diagon Alley", id: 1},
  {name: "Hogsmeade", id: 2},
  {name: "Hogwarts", id: 3},
  {name: "The Burrow", id: 4},
  {name: "Privet Drive", id: 5},
  {name: "The Ministry of Magic", id: 6},
  {name: "Grimmauld Place", id: 7}
])

Location.create([
  {name: "Ollivander's", description: "Wand shop", area_id: 1, id: 1},
  {name: "The Leaky Cauldron", description: "Pub", area_id: 1, id: 2},
  {name: "Flourish and Blott's", description: "Bookstore", area_id: 1, id: 3},
  {name: "Gringotts", description: "Wizarding Bank", area_id: 1, id: 4},
  {name: "Eeylops", description: "Owl Emporium and Magical Menagerie", area_id: 1, id: 5},
  {name: "Madam Malkins", description: "Robes for all occasions", area_id: 1, id: 6},
  {name: "Knockturn Alley", description: "Dodgy side street", area_id: 1, id: 7}
])

Item.create([
  {name: "Wand", description: "Holly with a phoenix feather core", location_id: 1, id: 1},
  {name: "Butterbeer", description: "The most delicious drink you have ever tasted", location_id: 2, id: 2},
  {name: "Hogwarts: A History", description: "by Bathilda Bagshot", location_id: 3, id: 3},
  {name: "5 galleons", description: "Gold coins", location_id: 4, id: 4},
  {name: "Hedwig", description: "Snowy Owl", location_id: 5, id: 5},
  {name: "Dress Robes", description: "Green, no lace", location_id: 6, id: 6},
  {name: "Old Fingernails", description: "A handful of grimey nails", location_id: 7, id: 7}
])

admin = User.new({user_name: "Admin", email: "admin@admin.com", admin: true, password: "password"})
admin.skip_confirmation!
admin.save!

test_user = User.new({user_name: "Test User", email: "testuser@testuser.com", password: "password"})
test_user.skip_confirmation!
test_user.save!
