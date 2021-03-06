require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest

  test "invalid signup information" do
    get signup_path
    assert_difference 'User.count', 1 do
      post users_path, params:{ user: { name: "Test User", email: "test@gmail.com", password:"testuser", password_confirmation:"testuser"}}
    end
    follow_redirect!
    assert_template 'users/show'
  end
end
