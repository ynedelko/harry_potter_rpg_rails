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
  {name: "Grimmauld Place", id: 7} ])

Location.create([
  {name: "Ollivander's", description: "Wand shop", area_id: 1},
  {name: "The Leaky Cauldron", description: "Pub", area_id: 1},
  {name: "Flourish and Blott's", description: "Bookstore", area_id: 1},
  {name: "Gringotts", description: "Wizarding Bank", area_id: 1},
  {name: "Eeylops", description: "Owl Emporium and Magical Menagerie", area_id: 1},
  {name: "Madam Malkins", description: "Robes for all occasions", area_id: 1},
  {name: "Knockturn Alley", description: "Dodgy side street", area_id: 1}])

admin = User.new({user_name: "Admin", email: "admin@admin.com", admin: true, password: "password"})
admin.skip_confirmation!
admin.save!
