# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
team1 = Team.create(name: "India")
team2 = Team.create(name: "Pakistan")
team3 = Team.create(name: "Australia")
team4 = Team.create(name: "England")
team5 = Team.create(name: "South Africa")

player = Player.create(team_id: team1.id, name: 'Virat Kohli', jersey_number:18, matches: 254, runs: 12169, wickets: 4)
player = Player.create(team_id: team1.id, name: 'Rohit Sharma', jersey_number:45, matches: 227, runs: 9205, wickets: 8)
player = Player.create(team_id: team1.id, name: 'Hardik Pandya', jersey_number:33, matches: 60, runs: 1267, wickets: 55)
player = Player.create(team_id: team1.id, name: 'Jasprit Bumrah', jersey_number:93, matches: 67, runs: 19, wickets: 108)
player = Player.create(team_id: team1.id, name: 'Mohammed Shami', jersey_number:11, matches: 79, runs: 161, wickets: 148)
player = Player.create(team_id: team2.id, name: 'Fakhar Zaman', jersey_number:39, matches: 50, runs: 2262, wickets: 1)
