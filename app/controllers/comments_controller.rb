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
    if @comment = @creature.comments.create!(comment_params)
      render status: 200, json: {
       message: "Your comment has been added!"
       }
    end
  end

  def update
    @comment = Comment.find(params[:id])
    @comment.update!(comment_params)
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
