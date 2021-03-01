# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Island.destroy_all
Tribe.destroy_all



island1 = Island.create(name: "Main")
island2 = Island.create(name: "Small")


tribe1 = island1.tribes.create(name: "Main Survivors")  
tribe2 = island1.tribes.create(name: "Sneaky Others")

tribe3 = island2.tribes.create(name:"Captured Survivors")
tribe4 = island2.tribes.create(name:"Main Others")

member1 = tribe1.members.create(name:"Jack")     # I could not figure out how to make each tribe
member2 = tribe1.members.create(name:"Sawyer")   # have unique members, at least within the time
member3 = tribe1.members.create(name:"Hurley")   # constraints... or frying haha

