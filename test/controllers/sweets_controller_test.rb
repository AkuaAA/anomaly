require 'test_helper'

class SweetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sweet = sweets(:one)
  end

  test "should get index" do
    get sweets_url
    assert_response :success
  end

  test "should get new" do
    get new_sweet_url
    assert_response :success
  end

  test "should create sweet" do
    assert_difference('Sweet.count') do
      post sweets_url, params: { sweet: { description: @sweet.description, name: @sweet.name, picture: @sweet.picture } }
    end

    assert_redirected_to sweet_url(Sweet.last)
  end

  test "should show sweet" do
    get sweet_url(@sweet)
    assert_response :success
  end

  test "should get edit" do
    get edit_sweet_url(@sweet)
    assert_response :success
  end

  test "should update sweet" do
    patch sweet_url(@sweet), params: { sweet: { description: @sweet.description, name: @sweet.name, picture: @sweet.picture } }
    assert_redirected_to sweet_url(@sweet)
  end

  test "should destroy sweet" do
    assert_difference('Sweet.count', -1) do
      delete sweet_url(@sweet)
    end

    assert_redirected_to sweets_url
  end
end
