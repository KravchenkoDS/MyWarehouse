require 'test_helper'

class MovingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @moving = movings(:one)
  end

  test "should get index" do
    get movings_url
    assert_response :success
  end

  test "should get new" do
    get new_moving_url
    assert_response :success
  end

  test "should create moving" do
    assert_difference('Moving.count') do
      post movings_url, params: { moving: { comment: @moving.comment, count: @moving.count, price: @moving.price, product: @moving.product, shipment: @moving.shipment } }
    end

    assert_redirected_to moving_url(Moving.last)
  end

  test "should show moving" do
    get moving_url(@moving)
    assert_response :success
  end

  test "should get edit" do
    get edit_moving_url(@moving)
    assert_response :success
  end

  test "should update moving" do
    patch moving_url(@moving), params: { moving: { comment: @moving.comment, count: @moving.count, price: @moving.price, product: @moving.product, shipment: @moving.shipment } }
    assert_redirected_to moving_url(@moving)
  end

  test "should destroy moving" do
    assert_difference('Moving.count', -1) do
      delete moving_url(@moving)
    end

    assert_redirected_to movings_url
  end
end
