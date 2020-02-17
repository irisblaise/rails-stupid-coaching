require 'test_helper'

class AskControllerTest < ActionDispatch::IntegrationTest
  test "should get asnwer" do
    get ask_asnwer_url
    assert_response :success
  end

end
