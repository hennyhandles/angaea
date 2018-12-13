require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get activities" do
    get static_pages_activities_url
    assert_response :success
  end

  test "should get rentals" do
    get static_pages_rentals_url
    assert_response :success
  end

  test "should get bookings" do
    get static_pages_bookings_url
    assert_response :success
  end

  test "should get dashboard" do
    get static_pages_dashboard_url
    assert_response :success
  end

  test "should get portfolio" do
    get static_pages_portfolio_url
    assert_response :success
  end

  test "should get settings" do
    get static_pages_settings_url
    assert_response :success
  end

end
