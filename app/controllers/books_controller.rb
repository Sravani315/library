class BooksController < ApplicationController
  def books_list
    @books = Book.all
  end

  def index
  	@books = author.books.all
  end

  def new
  	@book = author.books.new
  end

  def create
  	@book = author.books.new(book_params)
  	if @book.save
  		redirect_to author_books_path
  	else
  		render 'new'
  	end		
  end

  def update
  	@book = Book.find(params[:id])
  	if @book.update(book_params)
  		redirect_to author_books_path
  	else
  		render 'edit'
  	end
  end

  def edit
  	@book = Book.find(params[:id])
  end

  def show
  	@book = Book.find(params[:id])
    respond_to do | format |
      format.js
    end
  end

  def destroy
  	@book = Book.find(params[:id])
  	@book.destroy

  	redirect_to author_books_path
  end

  private
  	def book_params
  		params.require(:book).permit(:title, :description,:author_id)
  	end

  	def author
  		Author.find(params[:author_id])
  	end
end
