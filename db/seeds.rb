# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Match.destroy_all

20.times do

  Match.create!(
    team_one: %w[germany iran england france canada japan ecuador senegal netherlands].sample,
    team_two: %w[argentina mexico US spain poland brazil portugal belgium croatia].sample,
    stadium: %w[al_janoub al_thumama khalifa_international ahmad_bin_ali education_city al_bayt lusail stadium974].sample,
    match_time: "09/01/2022 16:00"
  )
end

# Event.destroy_all

# 3.times do
#   Event.create!(
#     name: ["England game", "Germany game", "Wales game", "France game"].sample,
#     description: ["Come watch the game with us", "Watching the game in a pub", "Watching the game on an outdoor screen"].sample,
#     date_time: "09/01/2022 15:00",
#     location_id: 1,
#     user_id: 1,
#     match_id: 12
#   )
# end
