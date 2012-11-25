require 'test_helper'

class AdminisControllerTest < ActionController::TestCase
  test "should get answers" do
    get :answers
    assert_response :success
  end

  test "should get others" do
    get :others
    assert_response :success
  end

end
