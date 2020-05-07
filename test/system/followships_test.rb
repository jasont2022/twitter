require "application_system_test_case"

class FollowshipsTest < ApplicationSystemTestCase
  setup do
    @followship = followships(:one)
  end

  test "visiting the index" do
    visit followships_url
    assert_selector "h1", text: "Followships"
  end

  test "creating a Followship" do
    visit followships_url
    click_on "New Followship"

    fill_in "Follower", with: @followship.follower_id
    fill_in "Following", with: @followship.following_id
    click_on "Create Followship"

    assert_text "Followship was successfully created"
    click_on "Back"
  end

  test "updating a Followship" do
    visit followships_url
    click_on "Edit", match: :first

    fill_in "Follower", with: @followship.follower_id
    fill_in "Following", with: @followship.following_id
    click_on "Update Followship"

    assert_text "Followship was successfully updated"
    click_on "Back"
  end

  test "destroying a Followship" do
    visit followships_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Followship was successfully destroyed"
  end
end
