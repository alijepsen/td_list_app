require 'test_helper'

class TdListsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get td_lists_index_url
    assert_response :success
  end

  test "should get show" do
    get td_lists_show_url
    assert_response :success
  end

  test "should get new" do
    get td_lists_new_url
    assert_response :success
  end

  test "should get edit" do
    get td_lists_edit_url
    assert_response :success
  end

end
