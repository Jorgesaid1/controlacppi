require "test_helper"

class MovimientosControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get movimientos_new_url
    assert_response :success
  end

  test "should get create" do
    get movimientos_create_url
    assert_response :success
  end
end
