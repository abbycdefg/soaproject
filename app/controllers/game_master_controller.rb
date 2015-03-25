class GameMasterController < ApplicationController
	def trade
		@user = User.find(params[:id])
	end


	def battle
		
	end

	def catch
		#@user = User.find(params[:id])
		@creaturesko = UserCreature.find(params[:id])

		render json: @creaturesko
		
	end
end