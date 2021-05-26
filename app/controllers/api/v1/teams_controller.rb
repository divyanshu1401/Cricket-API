class Api::V1::TeamsController < ApplicationController
  rescue_from ActiveRecord::RecordInvalid, with: :show_errors
  rescue_from ActiveRecord::RecordNotFound, with: :show_errors
  before_action :set_team, only: [:destroy, :show, :update]
  def index
    # curl  http://localhost:3000/api/v1/teams
    @teams = Team.all
    render json: {
      teams: @teams
    }
  end

  def create
    # >curl -X POST  -d "name=<new team>" http://localhost:3000/api/v1/teams/
    @team = Team.create!(params.permit(:name))
    render json: {
      team: @team
    }
  end

  def show
    # curl  http://localhost:3000/api/v1/teams/<team_id>
    render json: {
      name: @team.name
    }
  end

  def update
    # >curl -X PUT -d "name=new team" http://localhost:3000/api/v1/teams/<team_id>
    @team.update(params.permit(:name))
    head :no_content
  end

  def destroy
    # curl -X DELETE http://localhost:3000/api/v1/teams/<team_id>
    @team.destroy
    head :no_content
  end


  private

  def set_team
    byebug
    @team = Team.find(params[:id])
  end
end
