require 'test_helper'

class ChargeControllerTest < ActionDispatch::IntegrationTest
  test "should get make_charge" do
    get charge_make_charge_url
    assert_response :success
  end

  test "should get view_downloads" do
    get charge_view_downloads_url
    assert_response :success
  end

  test "should get charge_table" do
    get charge_charge_table_url
    assert_response :success
  end

end
