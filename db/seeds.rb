# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

artist = Artist.create(name: "Chiho Aoshima", style: "Pop Art")

museum = Museum.create(artist_id: 1, name: "Asian Art Museum", location: "Seattle, Washington, United States",
    description: "Seattle's premier Asian art museum")

museum_two = Museum.create(artist_id: 1, name: "Museum of Fine Arts", location: "Houston, Texas, United States",
    description: "Houston's best art museum")

