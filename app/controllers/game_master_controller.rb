class GameMasterController < ApplicationController
	def index
	end

	def trade
		@user = User.find(params[:id])
	end


	def battle
		
	end

	def catch


		render :template => "game_master/catch"

		#render json: @creaturesko
	end
end