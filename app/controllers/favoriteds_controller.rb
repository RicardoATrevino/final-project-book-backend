class FavoritedsController < ApplicationController
  before_action :authenticate_user

  def create
    @favorited = Favorited.create(
      user_id: current_user.id,
      book_id: params[:book_id],
      status: "Favorited",
    )
    render :show
  end

  def index
    @favoriteds = Favorited.all
    render :index
  end

  def destroy
    favorited = Favorited.find_by(id: params[:id])
    favorited.update(status: "removed")
    render json: { message: "Favorited Book destroyed!" }
  end
end
