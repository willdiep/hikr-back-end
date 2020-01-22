# User.destroy_all
# Hikingtrail.destroy_all
# Tag.destroy_all

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

megan = User.create(name: "Megan", email: "meganisawesome@gmail.com", username: "meganisawesome")

will = User.create(name: "Will", email: "willisawesome@gmail.com", username: "willisawesome")

joseph = User.create(name: "Joseph", email: "josephisawesome@gmail.com", username: "josephisawesome")




landsend = Hikingtrail.create(name: "Lands End Trail", distance: "344", location: "San Francisco, CA")

moragasteps = Hikingtrail.create(name: "Moraga Steps", distance: "0.1", location: "San Francisco, CA")

woodwind = Hikingtrail.create(name: "Woodwind Trail", distance: "200", location: "Portland, Oregon")




kidfriendlyfishing = Tag.create(user_id: 1, hikingtrail_id: 1, kidfriendly: true, fishing: true)

dogfriendlycamping = Tag.create(user_id: 2, hikingtrail_id: 2, dogfriendly: true, camping: true)

birdwatching = Tag.create(user_id: 3, hikingtrail_id: 3, birdwatching: true)