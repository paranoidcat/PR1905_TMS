class Subject < ApplicationRecord
  acts_as_paranoid

  validates :name, presence: true, uniqueness: true, length: { maximum: 50 }
  validates :introduction,  presence: true, length: { maximum: 1000 }
  validates :instruction,  presence: true, length: { maximum: 500 }

  has_many :subject_courses
  has_many :courses, through: :subject_courses

  has_many :subject_exams
  has_many :exams, through: :subject_exams

  has_many :user_subjects
  has_many :users, through: :user_subjects
end
