class CreaturesController < ApplicationController

  def index
    @creatures = Creature.all
    render :template => "creatures/index"
  end

  def new
    @creature = Creature.new
    render :template => "creatures/new"
  end

  def create
    @creature = Creature.new(creature_params)

    if @creature.save
      redirect_to creatures_path
    else
      render :template => "creatures/new"
    end
  end

  def destroy
    Creature.find(params[:id]).destroy!
    redirect_to creatures_path
  end
  
  def creature_params
    params.require(:creature).permit!
  end

end