require 'test_helper'

class OpinionControllerTest < ActionController::TestCase
  test "should get simple" do
    get :simple
    assert_response :success
  end

end
