class Api::V1::PlayersController < ApplicationController

  rescue_from ActiveRecord::RecordInvalid, with: :show_errors
  rescue_from ActiveRecord::RecordNotFound, with: :show_errors
  before_action :set_team, only: [:index, :show, :update, :destroy]

  def index
    # curl http://localhost:3000/api/v1/teams/<team_id>/players
    render json: {
      players: @team.players
    }
  end

  def create
    # curl -X POST  -d "team_id=<team_id>&name=<name>&jersey_number=<jersey_number>" http://localhost:3000/api/v1/teams/21/players
    @player = Player.new(player_params)
    @player.save!
  end

  def show
    # curl http://localhost:3000/api/v1/teams/<team_id>/players/<player_id>
    @player = @team.players.find_by!(id: params[:id]) if @team
    render json:{player: @player}
  end

  def update
    # curl -X PUT -d "runs=12220" http://localhost:3000/api/v1/teams/<team_id>/players/<player_id>
    @player = @team.players.find_by!(id: params[:id]) if @team
    @player.update(player_params)
    head :no_content
  end

  def destroy
    # curl -X DELETE http://localhost:3000/api/v1/teams/<team_id>/players/<player_id>
    @player = @team.players.find_by!(id: params[:id]) if @team
    @player.destroy
    head :no_content
  end


  private

  def set_team
    @team = Team.find(params[:team_id])
  end

  def player_params
    params.permit(:runs, :wickets, :matches, :name, :team_id, :jersey_number)
  end
end
