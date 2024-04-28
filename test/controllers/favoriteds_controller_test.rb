require "test_helper"

class FavoritedsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = User.create(name: "Test", email: "test@test.com", password: "password")

    post "/sessions.json", params: { email: "test@test.com", password: "password" }
    data = JSON.parse(response.body)
    @jwt = data["jwt"]
  end

  test "index" do
    get "/favorited.json", headers: { "Authorization" => "Bearer #{@jwt}" }
    assert_response 200
  end

  test "create" do
    post "/favorited.json",
         headers: { "Authorization" => "Bearer #{@jwt}" }
    assert_response 200
  end

  test "show" do
    delete "/favorited/:id.json", headers: { "Authorization" => "Bearer #{@jwt}" }
    assert_response 200

    @favorited.reload
    assert_equal "removed", @favorited.status
  end
end
