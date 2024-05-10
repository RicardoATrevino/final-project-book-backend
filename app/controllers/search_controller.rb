class SearchController < ApplicationController
  def search
    query = params[:q]
    response = HTTP.get("http://openlibrary.org/search.json?q=#{query}")
    body = response.parse
    render json: body["docs"]
  end

  def favorite
    book = Book.find_or_create_by(
      title: params[:title],
      author_name: params[:author_name],
      first_publish_year: params[:first_publish_year],
    )
    @favorite = Favorite.find_or_create_by(
      user_id: current_user.id,
      book_id: book.id,
    )
    render :show
  end
end
