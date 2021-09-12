require "test_helper"

class DragonsControllerTest < ActionDispatch::IntegrationTest
setup do
    @dragon = dragons(:one)
  end

    test "should destroy dragon" do
        assert_difference('Dragon.count', -1) do
          delete dragon_url(@dragon)
        end
    
        assert_redirected_to dragons_url
      end
end
