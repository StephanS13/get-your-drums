require "test_helper"

class SamplerControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get sampler_show_url
    assert_response :success
  end
end
