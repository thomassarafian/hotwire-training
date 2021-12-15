class LibrairyBooksController < ApplicationController
  before_action :set_librairy_book, only: %i[ show edit update destroy ]

  # GET /librairy_books or /librairy_books.json
  def index
    @librairy_books = LibrairyBook.all
  end

  # GET /librairy_books/1 or /librairy_books/1.json
  def show
  end

  # GET /librairy_books/new
  def new
    @librairy_book = LibrairyBook.new
  end

  # GET /librairy_books/1/edit
  def edit
  end

  # POST /librairy_books or /librairy_books.json
  def create
    @librairy_book = LibrairyBook.new(librairy_book_params)

    respond_to do |format|
      if @librairy_book.save
        format.html { redirect_to @librairy_book, notice: "Librairy book was successfully created." }
        format.json { render :show, status: :created, location: @librairy_book }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @librairy_book.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /librairy_books/1 or /librairy_books/1.json
  def update
    respond_to do |format|
      if @librairy_book.update(librairy_book_params)
        format.html { redirect_to @librairy_book, notice: "Librairy book was successfully updated." }
        format.json { render :show, status: :ok, location: @librairy_book }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @librairy_book.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /librairy_books/1 or /librairy_books/1.json
  def destroy
    @librairy_book.destroy
    respond_to do |format|
      format.html { redirect_to librairy_books_url, notice: "Librairy book was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_librairy_book
      @librairy_book = LibrairyBook.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def librairy_book_params
      params.require(:librairy_book).permit(:title, :status, :description, :status_date, :internal_info)
    end
end
