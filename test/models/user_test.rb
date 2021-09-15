require "test_helper"

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "valid password confirmation" do
   tester = User.new
   tester.email = 'tester@dragonrentals.com'
   tester.username = 'tester'
   tester.password = '123456'
   tester.password_confirmation = '123456!!'
   assert_not tester.valid?
  end

  test "blank mandatory fields" do
    tester = User.new
    assert_not tester.valid?
   end


end 