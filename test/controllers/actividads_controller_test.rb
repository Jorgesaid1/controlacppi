require "test_helper"

class ActividadsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get actividads_show_url
    assert_response :success
  end

  test "should get new" do
    get actividads_new_url
    assert_response :success
  end

  test "should get edit" do
    get actividads_edit_url
    assert_response :success
  end
end
