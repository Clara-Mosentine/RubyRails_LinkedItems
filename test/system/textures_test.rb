require "application_system_test_case"

class TexturesTest < ApplicationSystemTestCase
  setup do
    @texture = textures(:one)
  end

  test "visiting the index" do
    visit textures_url
    assert_selector "h1", text: "Textures"
  end

  test "should create texture" do
    visit textures_url
    click_on "New texture"

    fill_in "Name", with: @texture.name
    fill_in "Sizepixelsx", with: @texture.sizePixelsX
    fill_in "Sizepixelsy", with: @texture.sizePixelsY
    fill_in "Url", with: @texture.url
    click_on "Create Texture"

    assert_text "Texture was successfully created"
    click_on "Back"
  end

  test "should update Texture" do
    visit texture_url(@texture)
    click_on "Edit this texture", match: :first

    fill_in "Name", with: @texture.name
    fill_in "Sizepixelsx", with: @texture.sizePixelsX
    fill_in "Sizepixelsy", with: @texture.sizePixelsY
    fill_in "Url", with: @texture.url
    click_on "Update Texture"

    assert_text "Texture was successfully updated"
    click_on "Back"
  end

  test "should destroy Texture" do
    visit texture_url(@texture)
    click_on "Destroy this texture", match: :first

    assert_text "Texture was successfully destroyed"
  end
end
