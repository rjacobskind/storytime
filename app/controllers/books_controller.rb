class BooksController < ApplicationController
  # find the require_user method in application_controller.rb
  before_action :require_user, only: [:index, :show]

  def index
    bookParams = params[:book]
    if (bookParams)
      books = Book.where(title: bookParams[:title])
    else
      books = []
      for i in 1..5
        books.push(Book.find(i))
     end
    end
    @books = books
  end

  def show
    @book = Book.find(params[:id])
  end
end
