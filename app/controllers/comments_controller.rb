class CommentsController < ApplicationController
    skip_before_action :authenticate_user!, only: :index

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
    if @comment.save
      respond_to do |create|
        create.html {redirect_to club_path(@club)}
        create.js
      end
    else
      respond_to do |format|
        create.html {render 'clubs/show'}
        create.js
      end
    end
  end


private

  def comment_params
    params.require(:comment).permit(:content, :club_id, :user_id)
  end

end
