require 'test_helper'

class OtherControllerTest < ActionDispatch::IntegrationTest
  test "should get board" do
    get other_board_url
    assert_response :success
  end

end
