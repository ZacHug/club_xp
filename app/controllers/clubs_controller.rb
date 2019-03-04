class ClubsController < ApplicationController

  def index
    if params[:address].blank?
      @clubs = Club.all
    else
      @club = Club.near(params[:address])
    end
  end

  def show
    @club = Club.find(params[:id])
    @comment = Comment.new
    @comment.club = @club
    @favorite_club = current_user.favorites.find_by(club_id: @club.id)
    @favorite = Favorite.new
  end
end
