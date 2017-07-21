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
    @creature = Creature.create(creature_params)
    json_response(@creature)
  end

  def update
    @creature = Creature.find(params[:id])
    @creature.update(creature_params)
  end

  def destroy
    @creature = Creature.find(params[:id])
    @creature.destroy
  end

  private
  def json_response(object, status = :ok)
    render json: object, status: status
  end

  def creature_params
    params.permit(:name, :age, :gender, :coloring, :kind)
  end
end
