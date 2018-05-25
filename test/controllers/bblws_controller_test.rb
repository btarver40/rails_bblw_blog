require 'test_helper'

class BblwsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get bblws_index_url
    assert_response :success
  end

  test "should get show" do
    get bblws_show_url
    assert_response :success
  end

  test "should get new" do
    get bblws_new_url
    assert_response :success
  end

end
