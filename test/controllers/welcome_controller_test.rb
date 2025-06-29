require "test_helper"

class WelcomeControllerTest < ActionDispatch::IntegrationTest
  test "should get vibe_on" do
    get welcome_vibe_on_url
    assert_response :success
  end
end
