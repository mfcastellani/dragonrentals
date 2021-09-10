require "test_helper"

class DragonsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @post = posts(:one)
  end

  test "should get new" do
    get new_dragon_url
    assert_response :success
  end
    
  test "should create dragon" do
    assert_difference('Dragon.count') do
      post dragons_url, params: { dragon: { name: @dragon.name, birth_date: @dragon.birth_date, color: @dragon.color, characteristics: @dragon.characteristics } }
    end
        
    assert_redirected_to dragons_url(Dragon.last)
  end
end
