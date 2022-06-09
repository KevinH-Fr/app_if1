require "application_system_test_case"

class ResultatsTest < ApplicationSystemTestCase
  setup do
    @resultat = resultats(:one)
  end

  test "visiting the index" do
    visit resultats_url
    assert_selector "h1", text: "Resultats"
  end

  test "should create resultat" do
    visit resultats_url
    click_on "New resultat"

    fill_in "Course", with: @resultat.course
    fill_in "Event", with: @resultat.event
    fill_in "Pilote", with: @resultat.pilote
    fill_in "Qualification", with: @resultat.qualification
    click_on "Create Resultat"

    assert_text "Resultat was successfully created"
    click_on "Back"
  end

  test "should update Resultat" do
    visit resultat_url(@resultat)
    click_on "Edit this resultat", match: :first

    fill_in "Course", with: @resultat.course
    fill_in "Event", with: @resultat.event
    fill_in "Pilote", with: @resultat.pilote
    fill_in "Qualification", with: @resultat.qualification
    click_on "Update Resultat"

    assert_text "Resultat was successfully updated"
    click_on "Back"
  end

  test "should destroy Resultat" do
    visit resultat_url(@resultat)
    click_on "Destroy this resultat", match: :first

    assert_text "Resultat was successfully destroyed"
  end
end
