require 'test_helper'

class SolutionControllerTest < ActionDispatch::IntegrationTest
  test "should get motivation" do
    get solution_motivation_url
    assert_response :success
  end

end
