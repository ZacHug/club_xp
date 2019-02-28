class FavoritesController < ApplicationController
  def create
    @club = Club.find(params[:club_id])
    @user = current_user
    @favorite = Favorite.create(user: @user, club_id: params[:club_id])

    redirect_to user_path(@user)
  end

  def destroy
    @user = current_user
    @favorite = Favorite.find(params[:id])
    @user.favorites.destroy
    redirect_to user_path
  end
end
