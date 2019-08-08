require 'test_helper'

class ItemOutputsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @item_output = item_outputs(:one)
  end

  test "should get index" do
    get item_outputs_url
    assert_response :success
  end

  test "should get new" do
    get new_item_output_url
    assert_response :success
  end

  test "should create item_output" do
    assert_difference('ItemOutput.count') do
      post item_outputs_url, params: { item_output: { departure_date: @item_output.departure_date, fixed_asset: @item_output.fixed_asset, item_name: @item_output.item_name, point: @item_output.point, quantity: @item_output.quantity } }
    end

    assert_redirected_to item_output_url(ItemOutput.last)
  end

  test "should show item_output" do
    get item_output_url(@item_output)
    assert_response :success
  end

  test "should get edit" do
    get edit_item_output_url(@item_output)
    assert_response :success
  end

  test "should update item_output" do
    patch item_output_url(@item_output), params: { item_output: { departure_date: @item_output.departure_date, fixed_asset: @item_output.fixed_asset, item_name: @item_output.item_name, point: @item_output.point, quantity: @item_output.quantity } }
    assert_redirected_to item_output_url(@item_output)
  end

  test "should destroy item_output" do
    assert_difference('ItemOutput.count', -1) do
      delete item_output_url(@item_output)
    end

    assert_redirected_to item_outputs_url
  end
end
