require "application_system_test_case"

class CategoryEquipmentsTest < ApplicationSystemTestCase
  setup do
    @category_equipment = category_equipments(:one)
  end

  test "visiting the index" do
    visit category_equipments_url
    assert_selector "h1", text: "Category Equipments"
  end

  test "creating a Category equipment" do
    visit category_equipments_url
    click_on "New Category Equipment"

    fill_in "Name", with: @category_equipment.name
    click_on "Create Category equipment"

    assert_text "Category equipment was successfully created"
    click_on "Back"
  end

  test "updating a Category equipment" do
    visit category_equipments_url
    click_on "Edit", match: :first

    fill_in "Name", with: @category_equipment.name
    click_on "Update Category equipment"

    assert_text "Category equipment was successfully updated"
    click_on "Back"
  end

  test "destroying a Category equipment" do
    visit category_equipments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Category equipment was successfully destroyed"
  end
end
