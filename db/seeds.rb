# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Match.destroy_all

# 20.times do

#   Match.create!(
#     team_one: %w[germany iran england france canada japan ecuador senegal netherlands].sample,
#     team_two: %w[argentina mexico US spain poland brazil portugal belgium croatia].sample,
#     stadium: %w[al_janoub al_thumama khalifa_international ahmad_bin_ali education_city al_bayt lusail stadium974].sample,
#     match_time: "09/01/2022 16:00"
#   )
# end

# Location.create!(
#   name: "Le Wagon Barcelona",
#   address: "Carrer del Bruc, 149",
#   longitude: 2.163460,
#   latitude: 41.398760
# )

Event.destroy_all

# 3.times do
#   Event.create!(
#     name: ["England game", "Germany game", "Wales game", "France game"].sample,
#     description: ["Come watch the game with us", "Watching the game in a pub", "Watching the game on an outdoor screen"].sample,
#     match_time: "15:00",
#     location_id: 1,
#     user_id: 1,
#     match_id: 12
#   )
# end


Location.create(name: "Bar Àustria", address: "C/ d'Ausiàs Marc, 19, 08010 Barcelona")
Location.create(name: "Bar Trafalgar 1", address: "C/ de Trafalgar, 1, 08010 Barcelona")
Location.create(name: "Bar Restaurant Lleonès", address: "C. de Fontanella, 19, 08010 Barcelona")
Location.create(name: "Bonavida Cocktail Bar", address: "Carrer de Casp, 22, 08010 Barcelona")
Location.create(name: "Gracia's Bar", address: "Carrer de Milà i Fontanals, 9, 08012 Barcelona")
Location.create(name: "Bar Level", address: "Carrer del Rosselló, 206, 08008 Barcelona")
Location.create(name: "Aalaire rooftop", address: "C/ de Mallorca, 246, 252, 08008 Barcelona")
Location.create(name: "Bar 201", address: "C. de Villarroel, 201, 08036 Barcelona")
Location.create(name: "Bar Poble Sec", address: "Av. del Paral·lel, 130, 08015 Barcelona")
Location.create(name: "International Beer Bar", address: "Carrer del Cardenal Casañas, 4, 08002 Barcelona")
Location.create(name: "Bar Lobo", address: "Carrer del Pintor Fortuny, 3, 08001 Barcelona")
Location.create(name: "Bar Catalunya", address: "C. de Pere IV, 120, 08005 Barcelona")
Location.create(name: "L'Ovella Negra Marina", address: "Carrer de Zamora, 78, 08018 Barcelona")
# Location.create(name: "", address: "")

