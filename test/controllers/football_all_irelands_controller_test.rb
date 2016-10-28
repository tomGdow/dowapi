require 'test_helper'

class FootballAllIrelandsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @football_all_ireland = football_all_irelands(:one)
  end

  test "should get index" do
    get football_all_irelands_url, as: :json
    assert_response :success
  end

  test "should create football_all_ireland" do
    assert_difference('FootballAllIreland.count') do
      post football_all_irelands_url, params: { football_all_ireland: { county: @football_all_ireland.county, description: @football_all_ireland.description, winfirst: @football_all_ireland.winfirst, winlast: @football_all_ireland.winlast, wintotal: @football_all_ireland.wintotal } }, as: :json
    end

    assert_response 201
  end

  test "should show football_all_ireland" do
    get football_all_ireland_url(@football_all_ireland), as: :json
    assert_response :success
  end

  test "should update football_all_ireland" do
    patch football_all_ireland_url(@football_all_ireland), params: { football_all_ireland: { county: @football_all_ireland.county, description: @football_all_ireland.description, winfirst: @football_all_ireland.winfirst, winlast: @football_all_ireland.winlast, wintotal: @football_all_ireland.wintotal } }, as: :json
    assert_response 200
  end

  test "should destroy football_all_ireland" do
    assert_difference('FootballAllIreland.count', -1) do
      delete football_all_ireland_url(@football_all_ireland), as: :json
    end

    assert_response 204
  end
end
