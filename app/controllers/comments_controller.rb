class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end

  def new
    @club = Club.find(params[:id])
    @comment = Comment.new
  end


  def create
    @club = Club.find(params[:club_id])
    @user = current_user
    @comment = Comment.create(user: @user, club_id: params[:club_id], content: params[:comment][:content])

    redirect_to club_path(@club)
  end


private

  def comment_params
    params.require(:comment).permit(:content, :club_id, :user_id)
  end

end
