require "test_helper"

class HeroControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get hero_index_url
    assert_response :success
  end
end
