require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "create" do
    assert_difference "User.count", 1 do
      post "/users.json", params: { name: "Jake", email: "example2@email.com", image_url: "example.jpg" }
      assert_response 200
    end
  end
end
