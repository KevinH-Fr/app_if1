require "application_system_test_case"

class EcuriesTest < ApplicationSystemTestCase
  setup do
    @ecury = ecuries(:one)
  end

  test "visiting the index" do
    visit ecuries_url
    assert_selector "h1", text: "Ecuries"
  end

  test "should create ecurie" do
    visit ecuries_url
    click_on "New ecurie"

    fill_in "Nom", with: @ecury.nom
    fill_in "Text", with: @ecury.text
    click_on "Create Ecurie"

    assert_text "Ecurie was successfully created"
    click_on "Back"
  end

  test "should update Ecurie" do
    visit ecury_url(@ecury)
    click_on "Edit this ecurie", match: :first

    fill_in "Nom", with: @ecury.nom
    fill_in "Text", with: @ecury.text
    click_on "Update Ecurie"

    assert_text "Ecurie was successfully updated"
    click_on "Back"
  end

  test "should destroy Ecurie" do
    visit ecury_url(@ecury)
    click_on "Destroy this ecurie", match: :first

    assert_text "Ecurie was successfully destroyed"
  end
end
