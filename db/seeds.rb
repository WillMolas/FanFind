require "open-uri"

Match.destroy_all
Location.destroy_all
Event.destroy_all
EventBooking.destroy_all
User.destroy_all
Post.destroy_all

counter = 0
counter1 = 0
7.times do
  user = User.create!(
    username: ["Alexia", "Emilio", "Jessica", "Guillermo", "Leo Messi", "Alex1", "Emilia1", "Jess1", "Guillem1", "Leo Messi1"][counter],
    email: ["email@email.com", "email1@email.com", "email2@email.com", "email3@email.com", "email4@email.com", "email5@email.com", "email6@email.com", "email7@email.com", "email8@email.com", "email9@email.com"][counter],
    password: "123456",
    team: ["Argentina", "Australia", "Belgium", "Brazil", "Cameroon", "Canada", "Costa Rica", "Croatia", "Denmark", "Ecuador", "England", "France", "Germany", "Ghana", "Iran", "Japan", "Mexico", "Morocco", "Netherlands", "Poland", "Portugal", "Qatar", "Saudi Arabia", "Senegal", "Serbia", "South Korea", "Spain", "Switzerland", "Tunisia", "Uruguay", "USA", "Wales"].sample
  )
   match = Match.create!(
       team_one: ["Croatia", "Morocco", "England", "Brazil", "Portugal", "Brazil", "Argentina"][counter],
       team_two: ["Brazil", "Portugal", "France", "Argentina", "France", "Portugal", "France"][counter],
       stadium: ["al janoub", "al thumama", "khalifa international", "ahmad bin ali", "education city", "Al bayt lusail", "stadium974"].sample,
       match_time: ["9/12/2022 16:00", "10/12/2022 16:00", "10/12/2022 20:00", "13/12/2022 2:00", "14/12/2022 16:00", "17/12/2022 16:00", "18/12/2022 16:00"][counter]
     )
    location = Location.create!(
      name: ["L'Ovella Negra Marina", "Bar Àustria", "Bar Trafalgar 1", "Bar Restaurant Lleonès", "Bonavida Cocktail Bar", "Gracia's Bar", "Bar Level", "Aalaire rooftop", "Bar 201", "Bar Poble Sec", "The George Payne Irish Pub", "Sonora Sport Tavern", "Sports Bar - Barceloneta", "Sports Bar", "@L13 Sports Bar", "Bulldog Sport Bar & Grill", "Lennox the Pub - Ferran", "The Wild Rover", "Irish Pub Temple Bar", "POOL&BEER", "Dublin Sports Tavern", "CocoVail Beer Hall"][counter],
      address: ["Carrer de Zamora, 78, 08018 Barcelona", "C/ d'Ausiàs Marc, 19, 08010 Barcelona", "C/ de Trafalgar, 1, 08010 Barcelona", "C. de Fontanella, 19, 08010 Barcelona", "Carrer de Casp, 22, 08010 Barcelona", "Carrer de Milà i Fontanals, 9, 08012 Barcelona", "Carrer del Rosselló, 206, 08008 Barcelona", "C/ de Mallorca, 252, 08008 Barcelona", "C. de Villarroel, 201, 08036 Barcelona", "Av. del Paral·lel, 130, 08015 Barcelona", "Pl. d'Urquinaona, 5, 08010 Barcelona", "C/ dels Almogàvers, 122, 08018 Barcelona", "C/ de Pamplona, 96, 08018 Barcelona", "Pg. de Joan de Borbó, 29, 08003 Barcelona", "Carrer de la Marina, 290, 08013 Barcelona", "Carrer del Taulat, 1, 08005 Barcelona", "C/ de Mallorca, 464, 08013 Barcelona", "Carrer de Ferran, 7, 08002 Barcelona", "Carrer de Santa Mònica, 2, 08001 Barcelona", "Carrer de Ferran, 6, 08002 Barcelona", "Carrer de Casp, 186, 08013 Barcelona", "Plaça de Joan Llongueras, 5, 08021 Barcelona", "C/ d'Aragó, 284, 08009 Barcelona"][counter]
    )
    2.times do
      event = Event.create!(
        name: ["Win or die at Ovella", "Let's join all together", "In them we trust", "Where our hope ends", "Razzmatazz"].sample,
        description: ["Come watch the game with us", "Watching the game in a pub", "Watching the game on an outdoor screen"].sample,
        match_time: "15:00",
        location_id: location.id,
        user_id: user.id,
        match_id: match.id,
        capacity: [30..80].sample
      )
      user41 = User.create!(
        username: ["Alex2", "Emilia2", "Jess2", "Guillem2", "Leo Messi2"][counter1],
        email: ["alex5@email.com", "emilia5@email.com", "jess5@email.com", "guillem5@email.com", "leo5@email.com","alex1@email.com", "emilia1@email.com", "jess1@email.com", "guillem1@email.com", "leo1@email.com","alex2@email.com", "emilia2@email.com", "jess2@email.com", "guillem2@email.com", "leo2@email.com","alex3@email.com", "emilia3@email.com", "jess3@email.com", "guillem3@email.com", "leo3@email.com"][counter1],
        password: "123456",
        team: ["Australia", "Belgium", "Brazil", "Cameroon", "Argentina"][counter1]
      )
      EventBooking.create!(
        user_id: user41.id,
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
  user8 = User.create!(username: "Jack", email: "jack@email.com", password: "123456", team: "Netherlands")
  user9 = User.create!(username: "Linda", email: "penaldo@email.com", password: "123456", team: "Portugal")
  user10 = User.create!(username: "Yande", email: "yande@email.com", password: "123456", team: "Senegal")
  user11 = User.create!(username: "Gerard", email: "gerr@email.com", password: "123456", team: "Netherlands")
  user12 = User.create!(username: "Juan", email: "juan@email.com", password: "123456", team: "Netherlands")
  user13 = User.create!(username: "Rodrigo", email: "rodrigo@email.com", password: "123456", team: "Argentina")
  user14 = User.create!(username: "Grant", email: "grant@email.com", password: "123456", team: "USA")
  user15 = User.create!(username: "Francois", email: "fran@email.com", password: "123456", team: "France")
  user16 = User.create!(username: "Oscar", email: "oscar@email.com", password: "123456", team: "Argentina")
  user17 = User.create!(username: "Santiago", email: "santi@email.com", password: "123456", team: "Argentina")
  user18 = User.create!(username: "Harrison", email: "harri@email.com", password: "123456", team: "Netherlands")
  user19 = User.create!(username: "Sara", email: "sara@email.com", password: "123456", team: "Spain")
  user20 = User.create!(username: "Dilmer", email: "dilmer@email.com", password: "123456", team: "Netherlands")
  user21 = User.create!(username: "Hippo", email: "hippo@email.com", password: "123456", team: "Argentina")
  user22 = User.create!(username: "Tom", email: "tom@email.com", password: "123456", team: "England")
  user23 = User.create!(username: "Ramone", email: "ram@email.com", password: "123456", team: "Argentina")
  user24 = User.create!(username: "Gabriel", email: "gab@email.com", password: "123456", team: "Netherlands")
  user25 = User.create!(username: "Julian", email: "juli@email.com", password: "123456", team: "Argentina")
  user26 = User.create!(username: "Sofia", email: "sofi@email.com", password: "123456", team: "Argentina")
  user27 = User.create!(username: "Sarah", email: "sarah@email.com", password: "123456", team: "Argentina")
  user28 = User.create!(username: "Michael", email: "mich@email.com", password: "123456", team: "Netherlands")
  user29 = User.create!(username: "Alexandru", email: "alexandru@email.com", password: "123456", team: "Netherlands")
  user30 = User.create!(username: "Mathis", email: "mathis@email.com", password: "123456", team: "Netherlands")
  user31 = User.create!(username: "Gerard Mota", email: "gerard@email.com", password: "123456", team: "Argentina")
  user32 = User.create!(username: "Robi", email: "rob@email.com", password: "123456", team: "Portugal")
  user33 = User.create!(username: "Sergi", email: "sergi@email.com", password: "123456", team: "Spain")
  user34 = User.create!(username: "Josh", email: "josh@email.com", password: "123456", team: "Netherlands")
  user35 = User.create!(username: "Pato", email: "pato@email.com", password: "123456", team: "Argentina")
  user36 = User.create!(username: "Ben", email: "ben@email.com", password: "123456", team: "France")
  user37 = User.create!(username: "Filip", email: "philip@email.com", password: "123456", team: "Argentina")
  user38 = User.create!(username: "Camila", email: "camila@email.com", password: "123456", team: "Brazil")
  user39 = User.create!(username: "Lucia", email: "lucia@email.com", password: "123456", team: "Netherlands")
  user40 = User.create!(username: "Daniela", email: "dani@email.com", password: "123456", team: "Netherlands")

  post1 = Post.create!(content: "Celebrating last night", user_id: user1.id)
  file = URI.open("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQu-YrXeLzZ5ZzJ9G-KfGzITeABvNXROkw0bw&usqp=CAU")
  post1.photo.attach(io: file, filename: "celebrate.jpg", content_type: "image/jpg")

  post14 = Post.create!(content: "Ese es mi Messi querido!!!", user_id: user26.id)
  file = URI.open("https://netstorage-sportsbrief.akamaized.net/images/5339a815bfa09edb.jpg?imwidth=900")
  post14.photo.attach(io: file, filename: "celebrate14.jpg", content_type: "image/jpg")

  post15 = Post.create!(content: "Ready for next match!!!", user_id: user17.id)
  file = URI.open("https://news.agrofystatic.com/dia-mate-argentina-2021-196978.jpg?d=620x375")
  post15.photo.attach(io: file, filename: "celebrate15.jpg", content_type: "image/jpg")

  post2 = Post.create!(content: "Football's coming home!", user_id: user2.id)
  file = URI.open("https://i.insider.com/5b4366099e2a1040008b4872?width=600&format=jpeg&auto=webp")
  post2.photo.attach(io: file, filename: "celebrate1.jpg", content_type: "image/jpg")

  post3 = Post.create!(content: "Allez Les Bleus", user_id: user3.id)
  file = URI.open("https://blog.lingoda.com/wp-content/uploads/2022/06/The-top-5-French-football-teams-e1655973934799.jpg")
  post3.photo.attach(io: file, filename: "celebrate2.jpg", content_type: "image/jpg")

  post13 = Post.create!(content: "Let's ducking go!!!", user_id: user35.id)
  file = URI.open("https://cdn11.bigcommerce.com/s-nf2x4/images/stencil/1280x1280/products/739/8896/Soccer-Player-Boy-Rubber-Duck-Schanbels-2__96663.1599340628.jpg?c=2")
  post13.photo.attach(io: file, filename: "celebrate13.jpg", content_type: "image/jpg")

  post25 = Post.create!(content: "Un puchito a vuestra salud guachos!!!", user_id: user13.id)
  file = URI.open("https://media-cldnry.s-nbcnews.com/image/upload/rockcms/2021-03/210311-maradona-argentina-mb-1430-0ccf29.jpg")
  post25.photo.attach(io: file, filename: "celebrate25.jpg", content_type: "image/jpg")

  post5 = Post.create!(content: "Croatian hell", user_id: user5.id)
  file = URI.open("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTnwYQND3XX0LY-TeyAnE9Z3YUhcxNIFwZQOA&usqp=CAU")
  post5.photo.attach(io: file, filename: "celebrate4.jpg", content_type: "image/jpg")

  post11 = Post.create!(content: "Vamos Argentina carajo!!!", user_id: user25.id)
  file = URI.open("https://estaticos-cdn.sport.es/clip/347908d3-5599-47aa-8e5d-3124c5a655f3_alta-libre-aspect-ratio_default_0.jpg")
  post11.photo.attach(io: file, filename: "celebrate11.jpg", content_type: "image/jpg")

  post6 = Post.create!(content: "Obrigado Korea!!!", user_id: user6.id)
  file = URI.open("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSq4NyLpLSq7ob7qYZU222OADy_KBrD5T-cIA&usqp=CAU")
  post6.photo.attach(io: file, filename: "celebrate5.jpg", content_type: "image/jpg")

  post12 = Post.create!(content: "Le Wagon campus going crazy", user_id: user12.id)
  file = URI.open("https://images.xceed.me/blog/wp-content/uploads/2017/03/29122236/e15790ccfe7a77d0824d2d404ca7bc58.jpg")
  post12.photo.attach(io: file, filename: "celebrate12.jpg", content_type: "image/jpg")

  post8 = Post.create!(content: "Our luck hats worked", user_id: user8.id)
  file = URI.open("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTA8sxV_Y8QFrSHOO7O1IfRvCvcBq_N795GXQ&usqp=CAU")
  post8.photo.attach(io: file, filename: "celebrate7.jpg", content_type: "image/jpg")

  post4 = Post.create!(content: "Buabuabuabuabuaaaa!", user_id: user4.id)
  file = URI.open("https://resize.indiatvnews.com/en/resize/oldbucket/730_-/sportssoccer/FIFA-World-Cup-4920.jpg")
  post4.photo.attach(io: file, filename: "celebrate3.jpg", content_type: "image/jpg")

  post7 = Post.create!(content: "This is Morocco, not Spain!", user_id: user7.id)
  file = URI.open("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTVt8BNVJll9W6DLagvZZoIBqkrHrvdWKM-Gg&usqp=CAU")
  post7.photo.attach(io: file, filename: "celebrate6.jpg", content_type: "image/jpg")

  post9 = Post.create!(content: "Super Shuuuuuuuuu!!!", user_id: user9.id)
  file = URI.open("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0ZEv9eFcyB-pHxVIwN36vllNxNUQTzDp2Fg&usqp=CAU")
  post9.photo.attach(io: file, filename: "celebrate8.jpg", content_type: "image/jpg")

  post10 = Post.create!(content: "Remember our name", user_id: user10.id)
  file = URI.open("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOd7qHgcuxB_3EvACHyvZu494l1kSNDzdLkA&usqp=CAU")
  post10.photo.attach(io: file, filename: "celebrate9.jpg", content_type: "image/jpg")

  main_match = Match.create!(team_one: "Netherlands", team_two: "Argentina", stadium: "Al bayt lusail", match_time: "9/12/2022 20:00")
  main_location = Location.create!(name: "Secrets del Mediterrani", address:"Pg. de Sant Joan, 28, 08010 Barcelona")
  main_event = Event.create!(name: "Le Wagon crazy party", description: "Joins us and get hammered, paga Le Wagon", match_time: "20:00", location_id: main_location.id, user_id: user11.id, match_id: main_match.id, capacity: 45)

  users = [user1, user2, user3, user4, user5, user6, user7, user8, user9, user10, user11, user12, user13, user14, user15, user16, user17, user18, user19, user20, user21, user22, user23, user24, user25, user26, user27, user28, user29, user30, user31, user32, user33, user34, user35, user36, user37, user38, user39, user40]
  counter3 = 0
  40.times do
    EventBooking.create!(
      user_id: users[counter3].id,
      event_id: main_event.id
    )
    counter3 += 1
  end

  Location.create!(name: "Aalaire rooftop", address: "C/ de Mallorca, 252, 08008 Barcelona")
  Location.create!(name: "Bar 201", address: "C. de Villarroel, 201, 08036 Barcelona")
  Location.create!(name: "Bar Poble Sec", address: "Av. del Paral·lel, 130, 08015 Barcelona")
  Location.create!(name: "The George Payne Irish Pub", address: "Pl. d'Urquinaona, 5, 08010 Barcelona")
  Location.create!(name: "Razzmatazz", address: "C/ dels Almogàvers, 122, 08018 Barcelona")
  Location.create!(name: "Sonora Sport Tavern", address: "C/ de Pamplona, 96, 08018 Barcelona")
  Location.create!(name: "Sports Bar - Barceloneta", address: "Pg. de Joan de Borbó, 29, 08003 Barcelona")
  Location.create!(name: "@L13 Sports Bar", address: "Carrer del Taulat, 1, 08005 Barcelona")
  Location.create!(name: "Bulldog Sport Bar & Grill", address: "C/ de Mallorca, 464, 08013 Barcelona")
  Location.create!(name: "Lennox the Pub - Ferran", address: "Carrer de Ferran, 7, 08002 Barcelona")
  Location.create!(name: "The Wild Rover", address: "Carrer de Santa Mònica, 2, 08001 Barcelona")
  Location.create!(name: "Irish Pub Temple Bar", address: "Carrer de Ferran, 6, 08002 Barcelona")
  Location.create!(name: "POOL&BEER", address: "Carrer de Casp, 186, 08013 Barcelona")
  Location.create!(name: "Dublin Sports Tavern", address: "Plaça de Joan Llongueras, 5, 08021 Barcelona")
  Location.create!(name: "CocoVail Beer Hall", address: "C/ d'Aragó, 284, 08009 Barcelona")
