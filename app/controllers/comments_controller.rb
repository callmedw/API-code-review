class CommentsController < ApplicationController
  def index
    @creature = Creature.find(params[:creature_id])
    json_response(@creature.comments)
  end

  def show
    @comment = Comment.find(params[:id])
    json_response(@comment)
  end

  def create
    @creature = Creature.find(params[:creature_id])
    @comment = @creature.comments.create!(comment_params)
    json_response(@comment.creature, :created)
  end

  def update
    @comment = Comment.find(params[:id])
    @comment.update(comment_params)
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
  end

  private
  def comment_params
    params.permit(:author, :comment, :creature_id)
  end
end
