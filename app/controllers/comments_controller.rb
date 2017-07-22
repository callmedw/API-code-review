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
      render status: 201, json: {
       message: "Your comment has been added!"
       }
    end
  end

  def update
    @comment = Comment.find(params[:id])
    if @comment.update!(comment_params)
      render status: 200, json: {
       message: "Your comment has been updated!"
      }
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    if @comment.destroy
      render status: 200, json: {
       message: "You've removed that comment!"
      }
    end
  end

  private
  def comment_params
    params.permit(:author, :comment, :creature_id)
  end
end
