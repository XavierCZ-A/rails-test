require "test_helper"

class StoreSectionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @store_section = store_sections(:one)
  end

  test "should get index" do
    get store_sections_url
    assert_response :success
  end

  test "should get new" do
    get new_store_section_url
    assert_response :success
  end

  test "should create store_section" do
    assert_difference("StoreSection.count") do
      post store_sections_url, params: { store_section: { name: @store_section.name } }
    end

    assert_redirected_to store_section_url(StoreSection.last)
  end

  test "should show store_section" do
    get store_section_url(@store_section)
    assert_response :success
  end

  test "should get edit" do
    get edit_store_section_url(@store_section)
    assert_response :success
  end

  test "should update store_section" do
    patch store_section_url(@store_section), params: { store_section: { name: @store_section.name } }
    assert_redirected_to store_section_url(@store_section)
  end

  test "should destroy store_section" do
    assert_difference("StoreSection.count", -1) do
      delete store_section_url(@store_section)
    end

    assert_redirected_to store_sections_url
  end
end
