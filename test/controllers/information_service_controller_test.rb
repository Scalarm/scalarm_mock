require 'test_helper'

class InformationServiceControllerTest < ActionController::TestCase
  test "should get experiment_managers_list" do
    get :experiment_managers_list
    assert_response :success
  end

  test "should get storage_managers_list" do
    get :storage_managers_list
    assert_response :success
  end

end
