class SearchController < ApplicationController
  def search
    query = params[:q]
    response = HTTP.get("http://openlibrary.org/search.json?q=#{query}")
    body = response.parse

    render json: body["docs"]
  end
end
