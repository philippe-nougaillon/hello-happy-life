require "application_system_test_case"

class GroupesTest < ApplicationSystemTestCase
  setup do
    @groupe = groupes(:one)
  end

  test "visiting the index" do
    visit groupes_url
    assert_selector "h1", text: "Groupes"
  end

  test "creating a Groupe" do
    visit groupes_url
    click_on "New Groupe"

    fill_in "Activité", with: @groupe.activité_id
    fill_in "Nom", with: @groupe.nom
    fill_in "Organisation", with: @groupe.organisation_id
    click_on "Create Groupe"

    assert_text "Groupe was successfully created"
    click_on "Back"
  end

  test "updating a Groupe" do
    visit groupes_url
    click_on "Edit", match: :first

    fill_in "Activité", with: @groupe.activité_id
    fill_in "Nom", with: @groupe.nom
    fill_in "Organisation", with: @groupe.organisation_id
    click_on "Update Groupe"

    assert_text "Groupe was successfully updated"
    click_on "Back"
  end

  test "destroying a Groupe" do
    visit groupes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Groupe was successfully destroyed"
  end
end
