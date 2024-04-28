require "test_helper"

class BooksControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/books.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Book.count, data.length
  end
  test "show" do
    get "/books/#{Book.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "title", "author", "genre", "description", "created_at", "updated_at"], data.keys
  end
end
