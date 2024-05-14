require "test_helper"

class VinculosControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get vinculos_new_url
    assert_response :success
  end
end
