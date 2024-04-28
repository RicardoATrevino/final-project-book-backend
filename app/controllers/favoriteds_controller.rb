class FavoritedsController < ApplicationController
  def create
    @favorited = CartedProduct.create(
      user_id: current_user.id,
      book_id: params[:book_id],
      quantity: params[:quantity],
      status: "carted",
    )
    render :show
  end

  def index
    @carted_products = current_user.carted_products.where(status: "carted")
    render :index
  end

  def destroy
    carted_product = CartedProduct.find_by(id: params[:id])
    carted_product.update(status: "removed")
    render json: { message: "Carted product destroyed!" }
  end
end
