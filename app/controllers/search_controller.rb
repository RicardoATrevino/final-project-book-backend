class SearchController < ApplicationController
  def search
    query = params[:q]
    response = HTTP.get("http://openlibrary.org/search.json?q=#{query}")

    render json: response.body
  end
end
