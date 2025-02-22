require "test_helper"

class TextureGroupsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @texture_group = texture_groups(:one)
  end

  test "should get index" do
    get texture_groups_url
    assert_response :success
  end

  test "should get new" do
    get new_texture_group_url
    assert_response :success
  end

  test "should create texture_group" do
    assert_difference("TextureGroup.count") do
      post texture_groups_url, params: { texture_group: { material: @texture_group.material, refined: @texture_group.refined, smoothRepeat: @texture_group.smoothRepeat } }
    end

    assert_redirected_to texture_group_url(TextureGroup.last)
  end

  test "should show texture_group" do
    get texture_group_url(@texture_group)
    assert_response :success
  end

  test "should get edit" do
    get edit_texture_group_url(@texture_group)
    assert_response :success
  end

  test "should update texture_group" do
    patch texture_group_url(@texture_group), params: { texture_group: { material: @texture_group.material, refined: @texture_group.refined, smoothRepeat: @texture_group.smoothRepeat } }
    assert_redirected_to texture_group_url(@texture_group)
  end

  test "should destroy texture_group" do
    assert_difference("TextureGroup.count", -1) do
      delete texture_group_url(@texture_group)
    end

    assert_redirected_to texture_groups_url
  end
end
