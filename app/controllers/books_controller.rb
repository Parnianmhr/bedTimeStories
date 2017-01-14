class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)

    if @book.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def destroy
    @book = Book.find(params[:id])

    @book.destroy

    redirect_to root_path
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])

    if @book.update_attributes(book_params)
      redirect_to root_path
    else
      render 'edit'
    end
  end

  private

  def book_params
    params.require(:book).permit(:title, :image_url)
  end
end
