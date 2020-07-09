1# User.destroy_all
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




lands_end = Hikingtrail.create(
  "name": "Coastal Trail: Lands End",
  "summary": "A mega-popular hike hitting many Bay Area attractions in one fell swoop.",
  "difficulty": "greenBlue",
  "stars": 4.5,
  "location": "San Francisco, California",
  "url": "https://www.hikingproject.com/trail/7007647/coastal-trail-lands-end",
  "image": "https://cdn-files.apstatic.com/hike/7013808_medium_1554823419.jpg",
  "length": 2.9,
  "ascent": 192,
  "descent": -192,
  "high": 260,
  "low": 159,
  "longitude": -122.5117,
  "latitude": 37.7807,
  "conditionStatus": "Unknown"
)
  
hillside_loop = Hikingtrail.create(
  "name": "Hillside Loop",
  "summary": "Enjoy a loop around the world’s most visited redwood park under towering old growth Coastal Redwoods",
  "difficulty": "greenBlue",
  "stars": 4.7,
  "location": "Tamalpais Valley, California",
  "url": "https://www.hikingproject.com/trail/7017752/hillside-loop",
  "image": "https://cdn-files.apstatic.com/hike/7017221_medium_1554829027.jpg",
  "length": 2.5,
  "ascent": 255,
  "descent": -255,
  "high": 315,
  "low": 136,
  "longitude": -122.5694,
  "latitude": 37.8913,
  "conditionStatus": "Unknown"
)

muir_beach_loop = Hikingtrail.create(
  "name": "Muir Beach Loop",
  "summary": "Enjoy a loop around the world’s most visited redwood park under towering old growth Coastal Redwoods",
  "difficulty": "blue",
  "stars": 4.3,
  "location": "Tamalpais Valley, California",
  "url": "https://www.hikingproject.com/trail/7016771/muir-beach-loop",
  "image": "https://cdn-files.apstatic.com/hike/7011872_medium_1554560154.jpg",
  "length": 5.8,
  "ascent": 1164,
  "descent": -1164,
  "high": 889,
  "low": 14,
  "longitude": -122.5754,
  "latitude": 37.8611,
  "conditionStatus": "All Clear",
)




kidfriendlyfishing = Tag.create(user_id: 1, hikingtrail_id: 1, kidfriendly: true, fishing: true)

dogfriendlycamping = Tag.create(user_id: 2, hikingtrail_id: 2, dogfriendly: true, camping: true)

birdwatching = Tag.create(user_id: 3, hikingtrail_id: 3, birdwatching: true)