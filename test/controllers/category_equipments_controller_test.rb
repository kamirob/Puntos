require 'test_helper'

class CategoryEquipmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @category_equipment = category_equipments(:one)
  end

  test "should get index" do
    get category_equipments_url
    assert_response :success
  end

  test "should get new" do
    get new_category_equipment_url
    assert_response :success
  end

  test "should create category_equipment" do
    assert_difference('CategoryEquipment.count') do
      post category_equipments_url, params: { category_equipment: { name: @category_equipment.name } }
    end

    assert_redirected_to category_equipment_url(CategoryEquipment.last)
  end

  test "should show category_equipment" do
    get category_equipment_url(@category_equipment)
    assert_response :success
  end

  test "should get edit" do
    get edit_category_equipment_url(@category_equipment)
    assert_response :success
  end

  test "should update category_equipment" do
    patch category_equipment_url(@category_equipment), params: { category_equipment: { name: @category_equipment.name } }
    assert_redirected_to category_equipment_url(@category_equipment)
  end

  test "should destroy category_equipment" do
    assert_difference('CategoryEquipment.count', -1) do
      delete category_equipment_url(@category_equipment)
    end

    assert_redirected_to category_equipments_url
  end
end
