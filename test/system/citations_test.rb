require "application_system_test_case"

class CitationsTest < ApplicationSystemTestCase
  setup do
    @citation = citations(:one)
  end

  test "visiting the index" do
    visit citations_url
    assert_selector "h1", text: "Citations"
  end

  test "creating a Citation" do
    visit citations_url
    click_on "New Citation"

    fill_in "Apellido", with: @citation.apellido
    fill_in "Dni", with: @citation.dni
    fill_in "Email", with: @citation.email
    fill_in "Fechacita", with: @citation.fechacita
    fill_in "Nombre", with: @citation.nombre
    fill_in "Telefono", with: @citation.telefono
    click_on "Create Citation"

    assert_text "Citation was successfully created"
    click_on "Back"
  end

  test "updating a Citation" do
    visit citations_url
    click_on "Edit", match: :first

    fill_in "Apellido", with: @citation.apellido
    fill_in "Dni", with: @citation.dni
    fill_in "Email", with: @citation.email
    fill_in "Fechacita", with: @citation.fechacita
    fill_in "Nombre", with: @citation.nombre
    fill_in "Telefono", with: @citation.telefono
    click_on "Update Citation"

    assert_text "Citation was successfully updated"
    click_on "Back"
  end

  test "destroying a Citation" do
    visit citations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Citation was successfully destroyed"
  end
end
