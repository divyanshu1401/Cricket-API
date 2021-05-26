# README

Go to your terminal or cmd and run git clone https://github.com/divyanshu1401/Cricket-API.git

cd Cricket-API
now run the following command to get the server up and running
->bundle
->rails db:migrate
->rails db:seed
->rails s

now you can use curl or postman or browser to hit the API

some curl commands that you can use are
curl  http://localhost:3000/api/v1/teams
curl http://localhost:3000/api/v1/teams/<team_id>/players
curl -X POST  -d "team_id=<team_id>&name=<name>&jersey_number=<jersey_number>" http://localhost:3000/api/v1/teams/21/players
curl http://localhost:3000/api/v1/teams/<team_id>/players/<player_id>

curl commands are also given in all the actions in controllers
