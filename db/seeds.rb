# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.delete_all
Game.delete_all

User.create!(
  first_name: "Kanji",
  last_name: "Yomoda",
  legal_participant_identifier: "00000000000000822943114",
  username: "Kanji Yomoda",
  email: "kanji@kanji.com",
  password: "password"
  )

Game.create!(
  transfer_amount: 1000,
  user_id: 1,
  tokens: 0,
  total_saved: 400
  )

