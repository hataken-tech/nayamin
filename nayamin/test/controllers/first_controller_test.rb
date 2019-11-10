require 'test_helper'

class FirstControllerTest < ActionDispatch::IntegrationTest
  test "should get a_0" do
    get first_a_0_url
    assert_response :success
  end

end
