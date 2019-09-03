require 'test_helper'

class ItemEntriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @item_entry = item_entries(:one)
  end

  test "should get index" do
    get item_entries_url
    assert_response :success
  end

  test "should get new" do
    get new_item_entry_url
    assert_response :success
  end

  test "should create item_entry" do
    assert_difference('ItemEntry.count') do
      post item_entries_url, params: { item_entry: { equipment_id: @item_entry.equipment_id, quantity: @item_entry.quantity, supplier_id: @item_entry.supplier_id, total_value: @item_entry.total_value, unit_value: @item_entry.unit_value } }
    end

    assert_redirected_to item_entry_url(ItemEntry.last)
  end

  test "should show item_entry" do
    get item_entry_url(@item_entry)
    assert_response :success
  end

  test "should get edit" do
    get edit_item_entry_url(@item_entry)
    assert_response :success
  end

  test "should update item_entry" do
    patch item_entry_url(@item_entry), params: { item_entry: { equipment_id: @item_entry.equipment_id, quantity: @item_entry.quantity, supplier_id: @item_entry.supplier_id, total_value: @item_entry.total_value, unit_value: @item_entry.unit_value } }
    assert_redirected_to item_entry_url(@item_entry)
  end

  test "should destroy item_entry" do
    assert_difference('ItemEntry.count', -1) do
      delete item_entry_url(@item_entry)
    end

    assert_redirected_to item_entries_url
  end
end
