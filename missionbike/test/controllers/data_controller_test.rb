require 'test_helper'

class DataControllerTest < ActionController::TestCase
  test "should get display" do
    get :display
    assert_response :success
  end

end
