class FavoritesController < ApplicationController
  def create
    @club = Club.find(params[:club_id])
    @user = current_user
    @favorite = Favorite.create(user: @user, club_id: params[:club_id])

    redirect_to club_path(@club)
  end

  def update
    @user = current_user
    @favorite = Favorite.find(params[:id])
    @favorite.destroy
    redirect_to club_path(params[:club_id])
  end
end
