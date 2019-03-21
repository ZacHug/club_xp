class UsersController < ApplicationController
  def show
    @user = current_user
    @favorites = Favorite.all
  end

  def update
    @user = current_user
  end
end
