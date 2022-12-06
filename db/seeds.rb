require "open-uri"

 Match.destroy_all
 Location.destroy_all
 Event.destroy_all
 EventBooking.destroy_all
 User.destroy_all
 Post.destroy_all

counter = 0
counter1 = 0
  10.times do
    user = User.create!(
    username: ["Alex", "Emilia", "Jess", "Guillem", "Leo Messi", "Alex1", "Emilia1", "Jess1", "Guillem1", "Leo Messi1"][counter],
    email: ["email@email.com", "email1@email.com", "email2@email.com", "email3@email.com", "email4@email.com", "email5@email.com", "email6@email.com", "email7@email.com", "email8@email.com", "email9@email.com"][counter],
    password: "123456",
    team: ["Argentina", "Australia", "Belgium", "Brazil", "Cameroon", "Canada", "Costa Rica", "Croatia", "Denmark", "Ecuador", "England", "France", "Germany", "Ghana", "Iran", "Japan", "Mexico", "Morocco", "Netherlands", "Poland", "Portugal", "Qatar", "Saudi Arabia", "Senegal", "Serbia", "South Korea", "Spain", "Switzerland", "Tunisia", "Uruguay", "USA", "Wales"].sample
  )
   match = Match.create!(
     team_one: ["Croatia", "Netherlands", "Morocco", "England", "Netherlands", "Argentina", "France", "England", "Japan", "Morocco"][counter],
     team_two: ["Brasil", "Argentina", "Portugal", "France", "USA", "Australia", "Poland", "Senegal", "Croatia", "Spain"][counter],
     stadium: ["al janoub", "al thumama", "khalifa international", "ahmad bin ali", "education city", "al bayt lusail", "stadium974"].sample,
     match_time: ["9/12/2022 16:00", "9/12/2022 20:00", "10/12/2022 16:00", "10/12/2022 20:00", "3/12/2022 16:00", "3/12/2022 20:00", "4/12/2022 16:00", "8/12/2022 20:00", "8/12/2022 16:00", "8/12/2022 16:00"][counter]
   )
  location = Location.create!(
    name: ["L'Ovella Negra Marina", "Bar Àustria", "Bar Trafalgar 1", "Bar Restaurant Lleonès", "Bonavida Cocktail Bar", "Gracia's Bar", "Bar Level", "Aalaire rooftop", "Bar 201", "Bar Poble Sec"][counter],
    address: ["Carrer de Zamora, 78, 08018 Barcelona", "C/ d'Ausiàs Marc, 19, 08010 Barcelona", "C/ de Trafalgar, 1, 08010 Barcelona", "C. de Fontanella, 19, 08010 Barcelona", "Carrer de Casp, 22, 08010 Barcelona", "Carrer de Milà i Fontanals, 9, 08012 Barcelona", "Carrer del Rosselló, 206, 08008 Barcelona", "C/ de Mallorca, 246, 252, 08008 Barcelona", "C. de Villarroel, 201, 08036 Barcelona", "Av. del Paral·lel, 130, 08015 Barcelona"][counter]
  )
  2.times do
    event = Event.create!(
      name: ["Win or die at Ovella", "Let's join all together", "In them we trust", "Where our hope ends"].sample,
      description: ["Come watch the game with us", "Watching the game in a pub", "Watching the game on an outdoor screen"].sample,
      match_time: "15:00",
      location_id: location.id,
      user_id: user.id,
      match_id: match.id,
      capacity: [30..80].sample
    )
    user1 = User.create!(
      username: ["Alex2", "Emilia2", "Jess2", "Guillem2", "Leo Messi2"][counter1],
      email: ["alex5@email.com", "emilia5@email.com", "jess5@email.com", "guillem5@email.com", "leo5@email.com","alex1@email.com", "emilia1@email.com", "jess1@email.com", "guillem1@email.com", "leo1@email.com","alex2@email.com", "emilia2@email.com", "jess2@email.com", "guillem2@email.com", "leo2@email.com","alex3@email.com", "emilia3@email.com", "jess3@email.com", "guillem3@email.com", "leo3@email.com"][counter1],
      password: "123456",
      team: ["Australia", "Belgium", "Brazil", "Cameroon", "Argentina"][counter1]
    )
    EventBooking.create!(
      user_id: user1.id,
      event_id: event.id
    )
    counter1 += 1
  end
  counter += 1
end


user1 = User.create!(username: "Alex", email: "alex@email.com", password: "123456", team: "Argentina")
user2 = User.create!(username: "Jess", email: "jess@email.com", password: "123456", team: "England")
user3 = User.create!(username: "Emilia", email: "emilia@email.com", password: "123456", team: "France")
user4 = User.create!(username: "Guillem", email: "guillem@email.com", password: "123456", team: "Spain")
user5 = User.create!(username: "Boris", email: "boris@email.com", password: "123456", team: "Croatia")
user6 = User.create!(username: "Ronaldinho", email: "ronaldinho@email.com", password: "123456", team: "Brazil")
user7 = User.create!(username: "Mohamed", email: "mohamed@email.com", password: "123456", team: "Morocco")
user8 = User.create!(username: "Helen", email: "helen@email.com", password: "123456", team: "Netherlands")
user9 = User.create!(username: "Penaldo", email: "penaldo@email.com", password: "123456", team: "Portugal")
user10 = User.create!(username: "Yande", email: "yande@email.com", password: "123456", team: "Senegal")

post1 = Post.create(content: "Celebrating last night", user_id: user1.id)
file = URI.open("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQu-YrXeLzZ5ZzJ9G-KfGzITeABvNXROkw0bw&usqp=CAU")
post1.photo.attach(io: file, filename: "celebrate.jpg", content_type: "image/jpg")

post2 = Post.create(content: "Football's coming home!", user_id: user2.id)
file = URI.open("https://i.insider.com/5b4366099e2a1040008b4872?width=600&format=jpeg&auto=webp")
post2.photo.attach(io: file, filename: "celebrate1.jpg", content_type: "image/jpg")

post3 = Post.create(content: "Allez Les Bleus", user_id: user3.id)
file = URI.open("https://blog.lingoda.com/wp-content/uploads/2022/06/The-top-5-French-football-teams-e1655973934799.jpg")
post3.photo.attach(io: file, filename: "celebrate2.jpg", content_type: "image/jpg")

post4 = Post.create(content: "Buabuabuabuabuaaaa!", user_id: user4.id)
file = URI.open("https://resize.indiatvnews.com/en/resize/oldbucket/730_-/sportssoccer/FIFA-World-Cup-4920.jpg")
post4.photo.attach(io: file, filename: "celebrate3.jpg", content_type: "image/jpg")

post5 = Post.create(content: "Croatian hell", user_id: user5.id)
file = URI.open("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTnwYQND3XX0LY-TeyAnE9Z3YUhcxNIFwZQOA&usqp=CAU")
post5.photo.attach(io: file, filename: "celebrate4.jpg", content_type: "image/jpg")

post6 = Post.create(content: "Obrigado Korea!!!", user_id: user6.id)
file = URI.open("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSq4NyLpLSq7ob7qYZU222OADy_KBrD5T-cIA&usqp=CAU")
post6.photo.attach(io: file, filename: "celebrate5.jpg", content_type: "image/jpg")

post7 = Post.create(content: "This is Morocco, not Spain!", user_id: user7.id)
file = URI.open("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTVt8BNVJll9W6DLagvZZoIBqkrHrvdWKM-Gg&usqp=CAU")
post7.photo.attach(io: file, filename: "celebrate6.jpg", content_type: "image/jpg")

post8 = Post.create(content: "Our luck hats worked", user_id: user8.id)
file = URI.open("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTA8sxV_Y8QFrSHOO7O1IfRvCvcBq_N795GXQ&usqp=CAU")
post8.photo.attach(io: file, filename: "celebrate7.jpg", content_type: "image/jpg")

post9 = Post.create(content: "Super Shuuuuuuuuu!!!", user_id: user9.id)
file = URI.open("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0ZEv9eFcyB-pHxVIwN36vllNxNUQTzDp2Fg&usqp=CAU")
post9.photo.attach(io: file, filename: "celebrate8.jpg", content_type: "image/jpg")

post10 = Post.create(content: "Remember our name", user_id: user10.id)
file = URI.open("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOd7qHgcuxB_3EvACHyvZu494l1kSNDzdLkA&usqp=CAU")
post10.photo.attach(io: file, filename: "celebrate9.jpg", content_type: "image/jpg")
