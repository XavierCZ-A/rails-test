require "application_system_test_case"

class StoreSectionsTest < ApplicationSystemTestCase
  setup do
    @store_section = store_sections(:one)
  end

  test "visiting the index" do
    visit store_sections_url
    assert_selector "h1", text: "Store sections"
  end

  test "should create store section" do
    visit store_sections_url
    click_on "New store section"

    fill_in "Name", with: @store_section.name
    click_on "Create Store section"

    assert_text "Store section was successfully created"
    click_on "Back"
  end

  test "should update Store section" do
    visit store_section_url(@store_section)
    click_on "Edit this store section", match: :first

    fill_in "Name", with: @store_section.name
    click_on "Update Store section"

    assert_text "Store section was successfully updated"
    click_on "Back"
  end

  test "should destroy Store section" do
    visit store_section_url(@store_section)
    click_on "Destroy this store section", match: :first

    assert_text "Store section was successfully destroyed"
  end
end
