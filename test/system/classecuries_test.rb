require "application_system_test_case"

class ClassecuriesTest < ApplicationSystemTestCase
  setup do
    @classecury = classecuries(:one)
  end

  test "visiting the index" do
    visit classecuries_url
    assert_selector "h1", text: "Classecuries"
  end

  test "should create classecurie" do
    visit classecuries_url
    click_on "New classecurie"

    click_on "Create Classecurie"

    assert_text "Classecurie was successfully created"
    click_on "Back"
  end

  test "should update Classecurie" do
    visit classecury_url(@classecury)
    click_on "Edit this classecurie", match: :first

    click_on "Update Classecurie"

    assert_text "Classecurie was successfully updated"
    click_on "Back"
  end

  test "should destroy Classecurie" do
    visit classecury_url(@classecury)
    click_on "Destroy this classecurie", match: :first

    assert_text "Classecurie was successfully destroyed"
  end
end
