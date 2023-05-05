require "application_system_test_case"

class AritclesTest < ApplicationSystemTestCase
  setup do
    @aritcle = aritcles(:one)
  end

  test "visiting the index" do
    visit aritcles_url
    assert_selector "h1", text: "Aritcles"
  end

  test "should create aritcle" do
    visit aritcles_url
    click_on "New aritcle"

    fill_in "Description", with: @aritcle.description
    fill_in "Title", with: @aritcle.title
    click_on "Create Aritcle"

    assert_text "Aritcle was successfully created"
    click_on "Back"
  end

  test "should update Aritcle" do
    visit aritcle_url(@aritcle)
    click_on "Edit this aritcle", match: :first

    fill_in "Description", with: @aritcle.description
    fill_in "Title", with: @aritcle.title
    click_on "Update Aritcle"

    assert_text "Aritcle was successfully updated"
    click_on "Back"
  end

  test "should destroy Aritcle" do
    visit aritcle_url(@aritcle)
    click_on "Destroy this aritcle", match: :first

    assert_text "Aritcle was successfully destroyed"
  end
end
