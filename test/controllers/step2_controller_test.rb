require 'test_helper'

class Step2ControllerTest < ActionController::TestCase
  test "should get rails_setup" do
    get :rails_setup
    assert_response :success
  end

  test "should get mysql_setup" do
    get :mysql_setup
    assert_response :success
  end

  test "should get rails_app" do
    get :rails_app
    assert_response :success
  end

end
