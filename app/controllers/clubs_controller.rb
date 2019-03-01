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

  end
end
