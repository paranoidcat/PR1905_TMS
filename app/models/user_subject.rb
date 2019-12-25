class UserSubject < ApplicationRecord
  acts_as_paranoid

  belongs_to :users
  belongs_to :subjects

  validates :score, numericality: {less_than_or_equal_to: 10, greater_than_or_equal_to: 0}
end
