class UserCreaturesController < ApplicationController
	def new 
		@creatureko = UserCreature.new
		render :template => "usercreatures/new"
	end

	def create
		@creatureko = UserCreature.new(usercreature_params)

		if @creatureko.save
		  redirect_to root_path
		else
		  render :template => "usercreatures/new"
	end

	def usercreature_params
    	params.require(:location).permit!
 	end
end
