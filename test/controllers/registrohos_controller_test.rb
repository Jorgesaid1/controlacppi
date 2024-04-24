require "test_helper"

class RegistrohosControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get registrohos_new_url
    assert_response :success
  end
end
