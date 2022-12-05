# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "open-uri"

# Match.destroy_all
# Location.destroy_all
# Event.destroy_all
# EventBooking.destroy_all
# User.destroy_all
# Post.destroy_all

# counter = 0
# counter1 = 0
# 10.times do
#   user = User.create!(
#     username: ["Alex", "Emilia", "Jess", "Guillem", "Leo Messi", "Alex1", "Emilia1", "Jess1", "Guillem1", "Leo Messi1"][counter],
#     email: ["email@email.com", "email1@email.com", "email2@email.com", "email3@email.com", "email4@email.com", "email5@email.com", "email6@email.com", "email7@email.com", "email8@email.com", "email9@email.com"][counter],
#     password: "123456",
#     team: ["Argentina", "Australia", "Belgium", "Brazil", "Cameroon", "Canada", "Costa Rica", "Croatia", "Denmark", "Ecuador", "England", "France", "Germany", "Ghana", "Iran", "Japan", "Mexico", "Morocco", "Netherlands", "Poland", "Portugal", "Qatar", "Saudi Arabia", "Senegal", "Serbia", "South Korea", "Spain", "Switzerland", "Tunisia", "Uruguay", "USA", "Wales"].sample
#   )
#   match = Match.create!(
#     team_one: ["South Korea", "Ghana", "Serbia", "Brazil", "Netherlands", "Argentina", "France", "England", "Japan", "Morocco"][counter],
#     team_two: ["Portugal", "Uruguay", "Switzerland", "Cameroon", "USA", "Australia", "Poland", "Senegal", "Croatia", "Spain"][counter],
#     stadium: ["al janoub", "al thumama", "khalifa international", "ahmad bin ali", "education city", "al bayt lusail", "stadium974"].sample,
#     match_time: ["2/12/2022 16:00", "2/12/2022 16:00", "2/12/2022 20:00", "2/12/2022 20:00", "3/12/2022 16:00", "3/12/2022 20:00", "4/12/2022 16:00", "4/12/2022 20:00", "5/12/2022 16:00", "/12/2022 16:00"][counter]
#   )
#   location = Location.create!(
#     name: ["L'Ovella Negra Marina", "Bar Àustria", "Bar Trafalgar 1", "Bar Restaurant Lleonès", "Bonavida Cocktail Bar", "Gracia's Bar", "Bar Level", "Aalaire rooftop", "Bar 201", "Bar Poble Sec"][counter],
#     address: ["Carrer de Zamora, 78, 08018 Barcelona", "C/ d'Ausiàs Marc, 19, 08010 Barcelona", "C/ de Trafalgar, 1, 08010 Barcelona", "C. de Fontanella, 19, 08010 Barcelona", "Carrer de Casp, 22, 08010 Barcelona", "Carrer de Milà i Fontanals, 9, 08012 Barcelona", "Carrer del Rosselló, 206, 08008 Barcelona", "C/ de Mallorca, 246, 252, 08008 Barcelona", "C. de Villarroel, 201, 08036 Barcelona", "Av. del Paral·lel, 130, 08015 Barcelona"][counter]
#   )
#   2.times do
#     event = Event.create!(
#       name: ["Win or die at Ovella", "Let's join all together", "In them we trust", "Where our hope ends"].sample,
#       description: ["Come watch the game with us", "Watching the game in a pub", "Watching the game on an outdoor screen"].sample,
#       match_time: "15:00",
#       location_id: location.id,
#       user_id: user.id,
#       match_id: match.id,
#       capacity: [30..80].sample
#     )
#     user1 = User.create!(
#       username: ["Alex2", "Emilia2", "Jess2", "Guillem2", "Leo Messi2"][counter1],
#       email: ["alex@email.com", "emilia@email.com", "jess@email.com", "guillem@email.com", "leo@email.com","alex1@email.com", "emilia1@email.com", "jess1@email.com", "guillem1@email.com", "leo1@email.com","alex2@email.com", "emilia2@email.com", "jess2@email.com", "guillem2@email.com", "leo2@email.com","alex3@email.com", "emilia3@email.com", "jess3@email.com", "guillem3@email.com", "leo3@email.com"][counter1],
#       password: "123456",
#       team: ["Australia", "Belgium", "Brazil", "Cameroon", "Argentina"][counter1]
#     )
#     EventBooking.create!(
#       user_id: user1.id,
#       event_id: event.id
#     )
#     Post.create!(
#       content: ["Great game last night", "Big win!", "Celebrating the win"].sample,
#       user_id: user1.id,
#       created_at: ["2/12/2022 16:00"],
#       updated_at: ["2/12/2022 16:00"]
#     )
#     counter1 += 1
#   end
#   counter += 1
# end

Post.destroy_all
user1 = User.create!(username: "Alex", email: "alex@email.com", password: "123456", team: "Argentina")
user2 = User.create!(username: "Emilia", email: "emilia@email.com", password: "123456", team: "Brazil")
user3 = User.create!(username: "Jess", email: "jess@email.com", password: "123456", team: "England")
user4 = User.create!(username: "Guillem", email: "guillem@email.com", password: "123456", team: "Spain")


post1 = Post.create(content: "Celebrating last night", user_id: user1.id)
file = URI.open("https://media.istockphoto.com/id/866626388/photo/crowd-clapping-on-the-podium-of-the-stadium.jpg?s=612x612&w=0&k=20&c=u_71P3Qe3eFp9Q8BYkszoJPJJni62nzk3ENktzV6eU4=")
post1.photo.attach(io: file, filename: "celebrate.jpg", content_type: "image/jpg")

post2 = Post.create(content: "Football's coming home!", user_id: user2.id)
file = URI.open("https://i.insider.com/5b4366099e2a1040008b4872?width=600&format=jpeg&auto=webp")
post2.photo.attach(io: file, filename: "celebrate1.jpg", content_type: "image/jpg")

post3 = Post.create(content: "Allez Les Bleus", user_id: user3.id)
file = URI.open("https://blog.lingoda.com/wp-content/uploads/2022/06/The-top-5-French-football-teams-e1655973934799.jpg")
post3.photo.attach(io: file, filename: "celebrate2.jpg", content_type: "image/jpg")

post4 = Post.create(content: "Big win!", user_id: user4.id)
file = URI.open("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTrQFkcmaLmtYOHhCsa85KCErYKrW55fHoU4Q&usqp=CAU")
post4.photo.attach(io: file, filename: "celebrate3.jpg", content_type: "image/jpg")


# match = Match.create!(
#   team_one: ["Argentina", "Australia", "Belgium", "Brazil", "Cameroon", "Canada", "Costa Rica", "Croatia", "Denmark", "Ecuador", "England", "France", "Germany", "Ghana", "Iran", "Japan", "Mexico", "Morocco", "Netherlands", "Poland", "Portugal", "Qatar", "Saudi Arabia", "Senegal", "Serbia", "South Korea", "Spain", "Switzerland", "Tunisia", "Uruguay", "USA", "Wales"].sample,
#   team_two: ["Argentina", "Australia", "Belgium", "Brazil", "Cameroon", "Canada", "Costa Rica", "Croatia", "Denmark", "Ecuador", "England", "France", "Germany", "Ghana", "Iran", "Japan", "Mexico", "Morocco", "Netherlands", "Poland", "Portugal", "Qatar", "Saudi Arabia", "Senegal", "Serbia", "South Korea", "Spain", "Switzerland", "Tunisia", "Uruguay", "USA", "Wales"].sample,
#   stadium: ["al janoub", "al thumama", "khalifa international", "ahmad bin ali", "education city", "al bayt lusail", "stadium974"].sample,
#   match_time: ["19/11/2022 16:00", "20/11/2022 16:00", "21/11/2022 16:00", "22/11/2022 16:00", "23/11/2022 16:00"].sample
# )

# location = Location.create!(
#   name: ["Bar Àustria", "Bar Trafalgar 1", "Bar Restaurant Lleonès", "Bonavida Cocktail Bar", "Gracia's Bar", "Bar Level", "Aalaire rooftop", "Bar 201", "Bar Poble Sec", "International Beer Bar", "Bar Lobo", ]
#   address:

# )
# Location.create!(
#   name: "Le Wagon Barcelona",
#   address: "Carrer del Bruc, 149",
#   longitude: 2.163460,
#   latitude: 41.398760
# )

# Event.destroy_all

# 3.times do
#   Event.create!(
#     name: ["England game", "Germany game", "Wales game", "France game"].sample,
#     description: ["Come watch the game with us", "Watching the game in a pub", "Watching the game on an outdoor screen"].sample,
#     match_time: "15:00",
#     location_id: 1,
#     user_id: 1,
#     match_id: match
#   )
# end



# Location.create(name: "Bar Àustria", address: "C/ d'Ausiàs Marc, 19, 08010 Barcelona")
# Location.create(name: "Bar Trafalgar 1", address: "C/ de Trafalgar, 1, 08010 Barcelona")
# Location.create(name: "Bar Restaurant Lleonès", address: "C. de Fontanella, 19, 08010 Barcelona")
# Location.create(name: "Bonavida Cocktail Bar", address: "Carrer de Casp, 22, 08010 Barcelona")
# Location.create(name: "Gracia's Bar", address: "Carrer de Milà i Fontanals, 9, 08012 Barcelona")
# Location.create(name: "Bar Level", address: "Carrer del Rosselló, 206, 08008 Barcelona")
# Location.create(name: "Aalaire rooftop", address: "C/ de Mallorca, 246, 252, 08008 Barcelona")
# Location.create(name: "Bar 201", address: "C. de Villarroel, 201, 08036 Barcelona")
# Location.create(name: "Bar Poble Sec", address: "Av. del Paral·lel, 130, 08015 Barcelona")
# Location.create(name: "International Beer Bar", address: "Carrer del Cardenal Casañas, 4, 08002 Barcelona")
# Location.create(name: "Bar Lobo", address: "Carrer del Pintor Fortuny, 3, 08001 Barcelona")
# Location.create(name: "Bar Catalunya", address: "C. de Pere IV, 120, 08005 Barcelona")


# Location.create(name: "", address: "")
