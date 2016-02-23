class PlayersController < ApplicationController
	def new
		@player = Player.new
	end

	def create
		@player = Player.new(player_params)
		redirect_to player_path
	end

	def show
		@player = Player.find(params[:id])
	end

	private

	def player_params
		params.require(:players).permit(:name, :team)
	end
end
