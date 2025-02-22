require "application_system_test_case"

class TextureGroupsTest < ApplicationSystemTestCase
  setup do
    @texture_group = texture_groups(:one)
  end

  test "visiting the index" do
    visit texture_groups_url
    assert_selector "h1", text: "Texture groups"
  end

  test "should create texture group" do
    visit texture_groups_url
    click_on "New texture group"

    fill_in "Material", with: @texture_group.material
    check "Refined" if @texture_group.refined
    check "Smoothrepeat" if @texture_group.smoothRepeat
    click_on "Create Texture group"

    assert_text "Texture group was successfully created"
    click_on "Back"
  end

  test "should update Texture group" do
    visit texture_group_url(@texture_group)
    click_on "Edit this texture group", match: :first

    fill_in "Material", with: @texture_group.material
    check "Refined" if @texture_group.refined
    check "Smoothrepeat" if @texture_group.smoothRepeat
    click_on "Update Texture group"

    assert_text "Texture group was successfully updated"
    click_on "Back"
  end

  test "should destroy Texture group" do
    visit texture_group_url(@texture_group)
    click_on "Destroy this texture group", match: :first

    assert_text "Texture group was successfully destroyed"
  end
end
