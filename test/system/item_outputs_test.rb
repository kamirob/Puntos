require "application_system_test_case"

class ItemOutputsTest < ApplicationSystemTestCase
  setup do
    @item_output = item_outputs(:one)
  end

  test "visiting the index" do
    visit item_outputs_url
    assert_selector "h1", text: "Item Outputs"
  end

  test "creating a Item output" do
    visit item_outputs_url
    click_on "New Item Output"

    fill_in "Departure date", with: @item_output.departure_date
    fill_in "Fixed asset", with: @item_output.fixed_asset
    fill_in "Item name", with: @item_output.item_name
    fill_in "Point", with: @item_output.point
    fill_in "Quantity", with: @item_output.quantity
    click_on "Create Item output"

    assert_text "Item output was successfully created"
    click_on "Back"
  end

  test "updating a Item output" do
    visit item_outputs_url
    click_on "Edit", match: :first

    fill_in "Departure date", with: @item_output.departure_date
    fill_in "Fixed asset", with: @item_output.fixed_asset
    fill_in "Item name", with: @item_output.item_name
    fill_in "Point", with: @item_output.point
    fill_in "Quantity", with: @item_output.quantity
    click_on "Update Item output"

    assert_text "Item output was successfully updated"
    click_on "Back"
  end

  test "destroying a Item output" do
    visit item_outputs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Item output was successfully destroyed"
  end
end
