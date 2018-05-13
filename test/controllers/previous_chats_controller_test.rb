require 'test_helper'

class PreviousChatsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get previous_chats_new_url
    assert_response :success
  end

  test "should get edit" do
    get previous_chats_edit_url
    assert_response :success
  end

  test "should get update" do
    get previous_chats_update_url
    assert_response :success
  end

  test "should get destroy" do
    get previous_chats_destroy_url
    assert_response :success
  end

end
