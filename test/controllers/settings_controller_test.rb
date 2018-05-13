require 'test_helper'

class SettingsControllerTest < ActionDispatch::IntegrationTest
  test "should get payment" do
    get settings_payment_url
    assert_response :success
  end

  test "should get account" do
    get settings_account_url
    assert_response :success
  end

end
