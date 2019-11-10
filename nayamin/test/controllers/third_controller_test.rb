require 'test_helper'

class ThirdControllerTest < ActionDispatch::IntegrationTest
  test "should get c_1" do
    get third_c_1_url
    assert_response :success
  end

end
