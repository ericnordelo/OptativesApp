require 'test_helper'

class YearControllerTest < ActionDispatch::IntegrationTest
  test "should get update" do
    get year_update_url
    assert_response :success
  end

end
