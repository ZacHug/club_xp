class ClubsController < ApplicationController
  def index
    if params[:address].blank?
      @clubs = Club.all
    else
      @club = Club.where("city ILIKE ?", "%#{params[:address]}%")
    end
  end

  def show
    @club = Club.find(params[:id])
  end
end
