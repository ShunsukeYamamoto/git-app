require "application_system_test_case"

class ArticlasTest < ApplicationSystemTestCase
  setup do
    @articla = articlas(:one)
  end

  test "visiting the index" do
    visit articlas_url
    assert_selector "h1", text: "Articlas"
  end

  test "creating a Articla" do
    visit articlas_url
    click_on "New Articla"

    fill_in "Author", with: @articla.author
    fill_in "Text", with: @articla.text
    fill_in "Title", with: @articla.title
    click_on "Create Articla"

    assert_text "Articla was successfully created"
    click_on "Back"
  end

  test "updating a Articla" do
    visit articlas_url
    click_on "Edit", match: :first

    fill_in "Author", with: @articla.author
    fill_in "Text", with: @articla.text
    fill_in "Title", with: @articla.title
    click_on "Update Articla"

    assert_text "Articla was successfully updated"
    click_on "Back"
  end

  test "destroying a Articla" do
    visit articlas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Articla was successfully destroyed"
  end
end
