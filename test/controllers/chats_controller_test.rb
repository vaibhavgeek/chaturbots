require 'test_helper'

class ChatsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get chats_index_url
    assert_response :success
  end

  test "should get show" do
    get chats_show_url
    assert_response :success
  end

  test "should get update" do
    get chats_update_url
    assert_response :success
  end

  test "should get destroy" do
    get chats_destroy_url
    assert_response :success
  end

end
