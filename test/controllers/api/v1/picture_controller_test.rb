require 'test_helper'

class Api::V1::PictureControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get rate" do
    get :rate
    assert_response :success
  end

end
