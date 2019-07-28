# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(name: "Adam", email: "adam@email.com", password: "password")
User.create!(name: "Keenan", email: "keenan@email.com", password: "password")
User.create!(name: "Royce", email: "royce@email.com", password: "password")
User.create!(name: "Eddie", email: "eddie@email.com", password: "password")

Type.create!(name: "Position")
Type.create!(name: "Transition")
Type.create!(name: "Submission")

Technique.create!(name: "Knee Shield", description: "Half-guard variation", source: "Professor Brick", priority: 1, type_id: 1, user_id: 1)
Technique.create!(name: "Berimbolo", description: "Rolling back take from DLR", source: "Keenan Cornelius", priority: 1, type_id: 2, user_id: 2)
Technique.create!(name: "Body Fold", description: "Feint push kick, clinch, body fold, mount", source: "Royce Gracie", priority: 1, type_id: 2, user_id: 3)
Technique.create!(name: "Lockdown", description: "Half-guard variation", source: "10th Planet", priority: 3, type_id: 1, user_id: 4)
Technique.create!(name: "Lockdown", description: "Half-guard variation", source: "10th Planet", priority: 2, type_id: 1, user_id: 1)
Technique.create!(name: "Ankle Break", description: "Cheap move from back mount", source: "Professor Brick", priority: 2, type_id: 3, user_id: 1)
Technique.create!(name: "Twister", description: "Spine crank from half back mount", source: "10th Planet", priority: 1, type_id: 3, user_id: 4)

Video.create!(title: "Berimbolo from DLR", url: "https://www.facebook.com/brazilianjiujitsu/videos/244181313129782/", user_id: 2, technique_id: 2)
Video.create!(title: "Body Fold takedown", url: "https://video.search.yahoo.com/search/video?fr=mcafee&p=brazilian+jiu-jitsu+royce+gracie+body+fold+video#id=1&vid=408824b2a32cf60799e9796e53b7250c&action=click", user_id: 3, technique_id: 3)
