class CreaturesController < ApplicationController

  def index
    @creatures = Creature.all
    json_response(@creatures)
  end

  def show
    @creature = Creature.find(params[:id])
    json_response(@creature)
  end

  def create
    if @creature = Creature.create!(creature_params)
      render status: 200, json: {
       message: "Your creature has been added!"
       }
    end
  end

  def update
    @creature = Creature.find(params[:id])
    if @creature.update!(creature_params)
      render status: 200, json: {
       message: "Your creature has been updated!"
       }
    end
  end

  def destroy
    @creature = Creature.find(params[:id])
    @creature.destroy
  end

  private
  def creature_params
    params.permit(:name, :age, :gender, :coloring, :kind)
  end
end
