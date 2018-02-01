require 'test_helper'

class TechAssetsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tech_assets_index_url
    assert_response :success
  end

  test "should get new" do
    get tech_assets_new_url
    assert_response :success
  end

  test "should get create" do
    get tech_assets_create_url
    assert_response :success
  end

  test "should get show" do
    get tech_assets_show_url
    assert_response :success
  end

end
