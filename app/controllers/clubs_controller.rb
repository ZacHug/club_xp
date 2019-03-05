class ClubsController < ApplicationController
skip_before_action :authenticate_user!

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
    @favorite = Favorite.new
    @markers = { lng: @club.longitude, lat: @club.latitude 
    if user_signed_in?
      @favorite_club = current_user.favorites.find_by(club_id: @club.id)
    end
  end
end
