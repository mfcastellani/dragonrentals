require "test_helper"
class UsersControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers
  test "should destroy user" do
    sign_in users(:one)
    
    delete user_registration_url
    
    assert_redirected_to root_url
  end
end