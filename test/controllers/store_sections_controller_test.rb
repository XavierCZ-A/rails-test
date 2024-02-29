require "test_helper"

class StoreSectionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @store_section = store_sections(:autos)
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
    post store_sections_url, params: { store_section: { name: @store_section.name } }
    assert_redirected_to store_sections_url
  end

end
