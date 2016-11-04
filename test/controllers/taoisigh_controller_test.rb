require 'test_helper'

class TaoisighControllerTest < ActionDispatch::IntegrationTest
  setup do
    @taoiseach = taoisigh(:one)
  end

  test "should get index" do
    get taoisigh_url, as: :json
    assert_response :success
  end

  test "should create taoiseach" do
    assert_difference('Taoiseach.count') do
      post taoisigh_url, params: { taoiseach: { constituency: @taoiseach.constituency, dail_elected: @taoiseach.dail_elected, dail_leave: @taoiseach.dail_leave, date_of_birth: @taoiseach.date_of_birth, date_of_death: @taoiseach.date_of_death, description: @taoiseach.description, image_url: @taoiseach.image_url, name: @taoiseach.name, party: @taoiseach.party, taoiseach_finish: @taoiseach.taoiseach_finish, taoiseach_number: @taoiseach.taoiseach_number, taoiseach_start: @taoiseach.taoiseach_start, taoiseach_terms: @taoiseach.taoiseach_terms, url: @taoiseach.url } }, as: :json
    end

    assert_response 201
  end

  test "should show taoiseach" do
    get taoiseach_url(@taoiseach), as: :json
    assert_response :success
  end

  test "should update taoiseach" do
    patch taoiseach_url(@taoiseach), params: { taoiseach: { constituency: @taoiseach.constituency, dail_elected: @taoiseach.dail_elected, dail_leave: @taoiseach.dail_leave, date_of_birth: @taoiseach.date_of_birth, date_of_death: @taoiseach.date_of_death, description: @taoiseach.description, image_url: @taoiseach.image_url, name: @taoiseach.name, party: @taoiseach.party, taoiseach_finish: @taoiseach.taoiseach_finish, taoiseach_number: @taoiseach.taoiseach_number, taoiseach_start: @taoiseach.taoiseach_start, taoiseach_terms: @taoiseach.taoiseach_terms, url: @taoiseach.url } }, as: :json
    assert_response 200
  end

  test "should destroy taoiseach" do
    assert_difference('Taoiseach.count', -1) do
      delete taoiseach_url(@taoiseach), as: :json
    end

    assert_response 204
  end
end
