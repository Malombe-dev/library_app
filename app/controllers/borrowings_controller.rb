class BorrowingsController < ApplicationController
  before_action :authenticate_user!

  def create
    book = Book.find(params[:book_id])
    if Borrowing.exists?(book: book, returned: false)
      redirect_to book, alert: "This book is already borrowed."
    else
      current_user.borrowings.create!(book: book, due_date: 2.weeks.from_now, returned: false)
      redirect_to profile_path, notice: "Book borrowed successfully!"
    end
  end

  def update
    borrowing = Borrowing.find(params[:id])
    borrowing.update!(returned: true)
    redirect_to profile_path, notice: "Book returned successfully!"
  end
end
