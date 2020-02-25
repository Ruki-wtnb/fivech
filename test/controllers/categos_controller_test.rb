require 'test_helper'

class CategosControllerTest < ActionDispatch::IntegrationTest
  test "should get update" do
    get categos_update_url
    assert_response :success
  end

end
