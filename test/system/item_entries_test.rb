require "application_system_test_case"

class ItemEntriesTest < ApplicationSystemTestCase
  setup do
    @item_entry = item_entries(:one)
  end

  test "visiting the index" do
    visit item_entries_url
    assert_selector "h1", text: "Item Entries"
  end

  test "creating a Item entry" do
    visit item_entries_url
    click_on "New Item Entry"

    fill_in "Equipment", with: @item_entry.equipment_id
    fill_in "Quantity", with: @item_entry.quantity
    fill_in "Supplier", with: @item_entry.supplier_id
    fill_in "Total value", with: @item_entry.total_value
    fill_in "Unit value", with: @item_entry.unit_value
    click_on "Create Item entry"

    assert_text "Item entry was successfully created"
    click_on "Back"
  end

  test "updating a Item entry" do
    visit item_entries_url
    click_on "Edit", match: :first

    fill_in "Equipment", with: @item_entry.equipment_id
    fill_in "Quantity", with: @item_entry.quantity
    fill_in "Supplier", with: @item_entry.supplier_id
    fill_in "Total value", with: @item_entry.total_value
    fill_in "Unit value", with: @item_entry.unit_value
    click_on "Update Item entry"

    assert_text "Item entry was successfully updated"
    click_on "Back"
  end

  test "destroying a Item entry" do
    visit item_entries_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Item entry was successfully destroyed"
  end
end
