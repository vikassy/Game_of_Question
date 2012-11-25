require 'test_helper'

class FeaturesControllerTest < ActionController::TestCase
  test "should get hint" do
    get :hint
    assert_response :success
  end

end
