require "test_helper"

class LibrairyBooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @librairy_book = librairy_books(:one)
  end

  test "should get index" do
    get librairy_books_url
    assert_response :success
  end

  test "should get new" do
    get new_librairy_book_url
    assert_response :success
  end

  test "should create librairy_book" do
    assert_difference('LibrairyBook.count') do
      post librairy_books_url, params: { librairy_book: { description: @librairy_book.description, internal_info: @librairy_book.internal_info, status: @librairy_book.status, status_date: @librairy_book.status_date, title: @librairy_book.title } }
    end

    assert_redirected_to librairy_book_url(LibrairyBook.last)
  end

  test "should show librairy_book" do
    get librairy_book_url(@librairy_book)
    assert_response :success
  end

  test "should get edit" do
    get edit_librairy_book_url(@librairy_book)
    assert_response :success
  end

  test "should update librairy_book" do
    patch librairy_book_url(@librairy_book), params: { librairy_book: { description: @librairy_book.description, internal_info: @librairy_book.internal_info, status: @librairy_book.status, status_date: @librairy_book.status_date, title: @librairy_book.title } }
    assert_redirected_to librairy_book_url(@librairy_book)
  end

  test "should destroy librairy_book" do
    assert_difference('LibrairyBook.count', -1) do
      delete librairy_book_url(@librairy_book)
    end

    assert_redirected_to librairy_books_url
  end
end
