require "application_system_test_case"

class UserPlantsTest < ApplicationSystemTestCase
  setup do
    @user_plant = user_plants(:one)
  end

  test "visiting the index" do
    visit user_plants_url
    assert_selector "h1", text: "User Plants"
  end

  test "creating a User plant" do
    visit user_plants_url
    click_on "New User Plant"

    fill_in "Common name", with: @user_plant.common_name
    fill_in "Difficulty", with: @user_plant.difficulty
    fill_in "Image url", with: @user_plant.image_url
    fill_in "Insight", with: @user_plant.insight
    fill_in "Moisture", with: @user_plant.moisture
    fill_in "Monograph", with: @user_plant.monograph_id
    fill_in "Personality", with: @user_plant.personality
    fill_in "Plant name", with: @user_plant.plant_name
    fill_in "Story notes", with: @user_plant.story_notes
    fill_in "Sunlight", with: @user_plant.sunlight
    check "User fav" if @user_plant.user_fav
    fill_in "User", with: @user_plant.user_id
    click_on "Create User plant"

    assert_text "User plant was successfully created"
    click_on "Back"
  end

  test "updating a User plant" do
    visit user_plants_url
    click_on "Edit", match: :first

    fill_in "Common name", with: @user_plant.common_name
    fill_in "Difficulty", with: @user_plant.difficulty
    fill_in "Image url", with: @user_plant.image_url
    fill_in "Insight", with: @user_plant.insight
    fill_in "Moisture", with: @user_plant.moisture
    fill_in "Monograph", with: @user_plant.monograph_id
    fill_in "Personality", with: @user_plant.personality
    fill_in "Plant name", with: @user_plant.plant_name
    fill_in "Story notes", with: @user_plant.story_notes
    fill_in "Sunlight", with: @user_plant.sunlight
    check "User fav" if @user_plant.user_fav
    fill_in "User", with: @user_plant.user_id
    click_on "Update User plant"

    assert_text "User plant was successfully updated"
    click_on "Back"
  end

  test "destroying a User plant" do
    visit user_plants_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "User plant was successfully destroyed"
  end
end
