require "application_system_test_case"

class LibrairyBooksTest < ApplicationSystemTestCase
  setup do
    @librairy_book = librairy_books(:one)
  end

  test "visiting the index" do
    visit librairy_books_url
    assert_selector "h1", text: "Librairy Books"
  end

  test "creating a Librairy book" do
    visit librairy_books_url
    click_on "New Librairy Book"

    fill_in "Description", with: @librairy_book.description
    fill_in "Internal info", with: @librairy_book.internal_info
    fill_in "Status", with: @librairy_book.status
    fill_in "Status date", with: @librairy_book.status_date
    fill_in "Title", with: @librairy_book.title
    click_on "Create Librairy book"

    assert_text "Librairy book was successfully created"
    click_on "Back"
  end

  test "updating a Librairy book" do
    visit librairy_books_url
    click_on "Edit", match: :first

    fill_in "Description", with: @librairy_book.description
    fill_in "Internal info", with: @librairy_book.internal_info
    fill_in "Status", with: @librairy_book.status
    fill_in "Status date", with: @librairy_book.status_date
    fill_in "Title", with: @librairy_book.title
    click_on "Update Librairy book"

    assert_text "Librairy book was successfully updated"
    click_on "Back"
  end

  test "destroying a Librairy book" do
    visit librairy_books_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Librairy book was successfully destroyed"
  end
end
