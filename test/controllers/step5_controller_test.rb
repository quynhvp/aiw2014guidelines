require 'test_helper'

class Step5ControllerTest < ActionController::TestCase
  test "should get design_database" do
    get :design_database
    assert_response :success
  end

  test "should get creating_models" do
    get :creating_models
    assert_response :success
  end

  test "should get database_migrations" do
    get :database_migrations
    assert_response :success
  end

  test "should get using_activeadmin" do
    get :using_activeadmin
    assert_response :success
  end

end
