class BooksController < ApplicationController

  def new
    @book = Book.new
  end

  def create
    @book = Book.create(book_params)
    redirect_to book_path(@book.id)
  end

  def show
    @book = Book.find(params[:id])
  end

end

#############PRIVATE###########
private

def book_params
  params.require(:book).permit(:name, :author, :description)
end
