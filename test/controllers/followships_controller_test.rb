require 'test_helper'

class FollowshipsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @followship = followships(:one)
  end

  test "should get index" do
    get followships_url
    assert_response :success
  end

  test "should get new" do
    get new_followship_url
    assert_response :success
  end

  test "should create followship" do
    assert_difference('Followship.count') do
      post followships_url, params: { followship: { follower_id: @followship.follower_id, following_id: @followship.following_id } }
    end

    assert_redirected_to followship_url(Followship.last)
  end

  test "should show followship" do
    get followship_url(@followship)
    assert_response :success
  end

  test "should get edit" do
    get edit_followship_url(@followship)
    assert_response :success
  end

  test "should update followship" do
    patch followship_url(@followship), params: { followship: { follower_id: @followship.follower_id, following_id: @followship.following_id } }
    assert_redirected_to followship_url(@followship)
  end

  test "should destroy followship" do
    assert_difference('Followship.count', -1) do
      delete followship_url(@followship)
    end

    assert_redirected_to followships_url
  end
end
