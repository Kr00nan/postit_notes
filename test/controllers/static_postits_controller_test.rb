require 'test_helper'

class StaticPostitsControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get static_postits_home_url
    assert_response :success
  end

  test "should get about" do
    get static_postits_about_url
    assert_response :success
  end

end
