require 'test_helper'

class MybirthdayControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
