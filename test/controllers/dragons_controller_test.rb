require "test_helper"

class DragonsControllerTest < ActionDispatch::IntegrationTest

  setup do
    @dragon = dragons(:one)
  end

  test "should get new" do
    get new_dragon_url
    assert_response :success
  end
    
  test "should create dragon" do
    assert_difference('Dragon.count') do
      post dragons_url, params: { dragon: { name: @dragon.name, birth_date: @dragon.birth_date, color: @dragon.color, characteristics: @dragon.characteristics } }
    end
        
    assert_redirected_to dragon_url(Dragon.last)
  end

  test "should update dragon" do
      patch dragon_url(@dragon), params: { dragon: { name: "updated", birth_date: "updated", color: "updated", characteristics: "updated" } }
      
      assert_redirected_to dragon_path(@dragon)

      @dragon.reload
      
      assert_equal "updated", @dragon.name, @dragon.birth_date
  end

  test "should destroy dragon" do
    assert_difference('Dragon.count', -1) do
      delete dragon_url(@dragon)
    end
    
        assert_redirected_to dragons_url
  end

end
