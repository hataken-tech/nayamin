require 'test_helper'

class SecondControllerTest < ActionDispatch::IntegrationTest
  test "should get b_1" do
    get second_b_1_url
    assert_response :success
  end

end
