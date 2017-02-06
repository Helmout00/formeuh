require 'test_helper'

class FormeuhControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get formeuh_index_url
    assert_response :success
  end

  test "should get show" do
    get formeuh_show_url
    assert_response :success
  end

end
