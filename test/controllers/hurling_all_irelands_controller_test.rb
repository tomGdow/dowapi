require 'test_helper'

class HurlingAllIrelandsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hurling_all_ireland = hurling_all_irelands(:one)
  end

  test "should get index" do
    get hurling_all_irelands_url, as: :json
    assert_response :success
  end

  test "should create hurling_all_ireland" do
    assert_difference('HurlingAllIreland.count') do
      post hurling_all_irelands_url, params: { hurling_all_ireland: { county: @hurling_all_ireland.county, description: @hurling_all_ireland.description, winfirst: @hurling_all_ireland.winfirst, winlast: @hurling_all_ireland.winlast, wintotal: @hurling_all_ireland.wintotal } }, as: :json
    end

    assert_response 201
  end

  test "should show hurling_all_ireland" do
    get hurling_all_ireland_url(@hurling_all_ireland), as: :json
    assert_response :success
  end

  test "should update hurling_all_ireland" do
    patch hurling_all_ireland_url(@hurling_all_ireland), params: { hurling_all_ireland: { county: @hurling_all_ireland.county, description: @hurling_all_ireland.description, winfirst: @hurling_all_ireland.winfirst, winlast: @hurling_all_ireland.winlast, wintotal: @hurling_all_ireland.wintotal } }, as: :json
    assert_response 200
  end

  test "should destroy hurling_all_ireland" do
    assert_difference('HurlingAllIreland.count', -1) do
      delete hurling_all_ireland_url(@hurling_all_ireland), as: :json
    end

    assert_response 204
  end
end
