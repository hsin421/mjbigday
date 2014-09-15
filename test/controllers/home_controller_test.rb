require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get rsvp" do
    get :rsvp
    assert_response :success
  end

end
