require "test_helper"

class HomeofficeControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get homeoffice_new_url
    assert_response :success
  end
end
