require 'test_helper'

class RentalsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get rentals_index_url
    assert_response :success
  end

  test "should get search" do
    get rentals_search_url
    assert_response :success
  end

  test "should get show" do
    get rentals_show_url
    assert_response :success
  end

end
