require "test_helper"

class Admin::Services　newControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_services　new_index_url
    assert_response :success
  end

  test "should get edit" do
    get admin_services　new_edit_url
    assert_response :success
  end
end
