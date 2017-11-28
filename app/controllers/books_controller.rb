class BooksController < ApplicationController
  before_action :set_book, only: [:show, :edit, :update, :destroy]
  before_filter :authorize
  # GET /books
  # GET /books.json


  def index
    @books = Book.all


    if params[:search]
      @books = Book.search(params[:search]).order("created_at DESC")
    else
      @books = Book.all.order("created_at DESC")
    end
    @books =@books.page(params[:page]).per_page(5)
  end

  # GET /books/1
  # GET /books/1.json
  def show
  end

  # GET /books/new
  def new

    @book = Book.new
  end

  # GET /books/1/edit
  def edit
  end

  # POST /books
  # POST /books.json
  def create
    @book = Book.new(book_params)

    respond_to do |format|
      if @book.save
        format.html { redirect_to "http://5.135.175.184/books/#{@book.id}", notice: 'Book was successfully created.' }
        format.json { render :show, status: :created, location: @book }
      else
        format.html { render :new }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /books/1
  # PATCH/PUT /books/1.json
  def update
    respond_to do |format|
      if @book.update(book_params)
        format.html { redirect_to "http://5.135.175.184/books/#{@book.id}", notice: 'Book was successfully updated.' }
        format.json { render :show, status: :ok, location: @book }
      else
        format.html { render :edit }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /books/1
  # DELETE /books/1.json
  def destroy
    @book.destroy
    respond_to do |format|
      format.html { redirect_to "http://5.135.175.184/books/", notice: 'Book was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def check_out
    @params = params[:book]
      #param=params[:user]
      title = @params[:title]
      #lname = param[:lname].reject(&:blank?) unless params[:lname].nil?
      @book = Book.find_by_title(title)
      @user = current_user
      if @user == nil
        @note = 'This user is not registered.'
      elsif @book == nil
        @note = 'This book is not in the library.'
      elsif @book.onloan == 1
        @note = 'This book is on loan.'
      else
        @book.onloan = 1
        @book.save
        @books_loaned = BooksOnLoan.create(book_id: @book.id, user_id: @user.id)
        @books_loaned.save
        @note = 'The book has been checked out.'
      end
      respond_to do |format|
        format.html
      end
    end

    def check_in
      @params = params[:book]
      title = @params[:title]
      @book = Book.find_by_title(title)

      if @book != nil
        @book.onloan = 0
        @book.save
        @books_loaned = BooksOnLoan.find_by_book_id(@book.id)
        if @books_loaned != nil
          @books_loaned.destroy
          @note = 'The book has been checked in.'
        else
          @note = 'Error in books_loaned destroy'
        end
      else
        @note = 'Book not found'
      end
      respond_to do |format|
        format.html
      end
    end

    def list_onloan
      @books_loaned = BooksOnLoan.all
      if @books_loaned == nil
        @note = 'No books are on loan.'
      else
        respond_to do |format|
          format.html
        end
      end
    end

    def edit_multiple
      @books = Book.find(params[:book_ids])
    end

    def update_multiple
      @books = Book.update(params[:books].keys,params[:books].values)
      @books.reject! { |p| p.errors.empty? }
      if @books.empty?
        redirect_to "http://5.135.175.184/books/"
      else
        render "edit_multiple"
      end
    end




    private
    # Use callbacks to share common setup or constraints between actions.
    def set_book
      @book = Book.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def book_params
      params.require(:book).permit(:title,:image, :Author, :ISBN, :Publisher, :Language, :onloan, :description)
    end
  end
