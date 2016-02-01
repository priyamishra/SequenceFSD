require 'test_helper'

class WelcomeControllerTest < ActionController::TestCase
  test "should get list" do
    get :list
    assert_response :success
  end

  test "should get details" do
    get :details
    assert_response :success
  end

end
