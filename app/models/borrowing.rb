class Borrowing < ApplicationRecord
  belongs_to :book
  belongs_to :user

  validates :user, presence: true
  validates :due_date, presence: true
end