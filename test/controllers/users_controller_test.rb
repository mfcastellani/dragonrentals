require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers
  def setup
    @user = users(:one)
  end

  test "should destroy user" do
    sign_in(@user)

    assert_difference 'User.count', -1 do
      
      delete user_registration_url
    end

    assert_redirected_to root_url
  end

  test "should update user" do
    sign_in(@user)

    patch user_registration_url, params: { user: { email: @user.email, username: 'banana', current_password: '123456' } }

    assert_redirected_to root_url
  end
  
end
