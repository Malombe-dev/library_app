class BooksController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  before_action :set_book, only: [:show, :borrow, :return]

  def index
    @books = Book.all
  end

  def show
    @borrowed = Borrowing.exists?(book: @book, returned: false)
  end

  def borrow
    if @book.available?
      Borrowing.create!(book: @book, user: current_user, due_date: 2.weeks.from_now, returned: false)
      redirect_to books_path, notice: "You borrowed '#{@book.title}'. Due date: #{2.weeks.from_now.strftime('%d %b %Y')}"
    else
      redirect_to books_path, alert: "This book is already borrowed."
    end
  end

  def return
    borrowing = Borrowing.find_by(book: @book, returned: false, user: current_user)
    if borrowing
      borrowing.update(returned: true)
      redirect_to books_path, notice: "Book returned successfully."
    else
      redirect_to books_path, alert: "No borrowing record found for this book."
    end
  end

  private

  def set_book
    @book = Book.find(params[:id])
  end
end

# Add this to your application layout (app/views/layouts/application.html.erb):
# <%= link_to 'Logout', destroy_user_session_path, method: :delete, class: 'btn btn-outline-danger' %> if user_signed_in? 
