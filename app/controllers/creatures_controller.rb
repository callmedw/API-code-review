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

  def most_comments
    @creatures = Creature.most_comments
    json_response(@creatures)
  end

  def search
    kind = params[:kind]
    @creatures = Creature.search(kind)
    json_response(@creatures)
  end

  def random
    @creatures = Creature.random
    json_response(@creatures)
  end

  private
  def creature_params
    params.permit(:name, :age, :gender, :coloring, :kind)
  end
end
