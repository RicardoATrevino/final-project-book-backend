class UsersController < ApplicationController
  def create
    @user = User.create(
      name: params[:name],
      email: params[:email],
      image_url: params[:image_url],
    )
    render :show
  end
end
