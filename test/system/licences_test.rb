require "application_system_test_case"

class LicencesTest < ApplicationSystemTestCase
  setup do
    @licence = licences(:one)
  end

  test "visiting the index" do
    visit licences_url
    assert_selector "h1", text: "Licences"
  end

  test "should create licence" do
    visit licences_url
    click_on "New licence"

    fill_in "Penalite", with: @licence.penalite
    fill_in "Recupere", with: @licence.recupere
    click_on "Create Licence"

    assert_text "Licence was successfully created"
    click_on "Back"
  end

  test "should update Licence" do
    visit licence_url(@licence)
    click_on "Edit this licence", match: :first

    fill_in "Penalite", with: @licence.penalite
    fill_in "Recupere", with: @licence.recupere
    click_on "Update Licence"

    assert_text "Licence was successfully updated"
    click_on "Back"
  end

  test "should destroy Licence" do
    visit licence_url(@licence)
    click_on "Destroy this licence", match: :first

    assert_text "Licence was successfully destroyed"
  end
end
