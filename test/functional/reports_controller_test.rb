require 'test_helper'

class ReportsControllerTest < ActionController::TestCase
  test "should get customer_artist_preference" do
    get :customer_artist_preference
    assert_response :success
  end

  test "should get past_purchase" do
    get :past_purchase
    assert_response :success
  end

  test "should get past_purchase_artwork_location" do
    get :past_purchase_artwork_location
    assert_response :success
  end

  test "should get artist_works" do
    get :artist_works
    assert_response :success
  end

  test "should get speed_of_sale" do
    get :speed_of_sale
    assert_response :success
  end

end
