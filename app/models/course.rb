class Course < ApplicationRecord
  acts_as_paranoid

  validates :name,  presence: true, uniqueness: true, length: { maximum: 50 }
  validates :introduction,  presence: true, length: { maximum: 1000 }

  has_many :user_courses
  has_many :users, through: :user_courses

  has_many :subject_courses
  has_many :subjects
end
