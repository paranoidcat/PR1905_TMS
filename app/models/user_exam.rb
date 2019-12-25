class UserExam < ApplicationRecord
  acts_as_paranoid

  enum status: {fail: 0, pass: 1}
  belongs_to :user
  belongs_to :exam

  validates :score, numericality: {less_than_or_equal_to: 10, greater_than_or_equal_to: 0}
end
