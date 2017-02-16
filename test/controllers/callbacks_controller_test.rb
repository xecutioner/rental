require 'test_helper'

class CallbacksControllerTest < ActionDispatch::IntegrationTest
  test "should get authentication" do
    get callbacks_authentication_url
    assert_response :success
  end

end
