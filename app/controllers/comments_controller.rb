class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end

  def new
    @club = Club.find(params[:id])
    @comment = Comment.new
  end


private

  def comment_params
    params.require(:comment).permit(:content, :club_id, :user_id)
  end
end
