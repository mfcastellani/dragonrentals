require "test_helper"

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "valid password confirmation" do
    user = User.new(email: 'tester@dragonrentals.com',                        
                      username: 'tester',                                       
                      password: '123456',                                       
                      password_confirmation: '123456!!')
                      attribute_error = user.errors.attribute_names.first
                      assert_nil attribute_error
  end

  test "blank mandatory fields" do
    user = User.new
    attribute_error = user.errors.attribute_names if user.valid? == false
    assert_equal [:email, :password, :username] ,attribute_error
   end
end 