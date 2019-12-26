class Exam < ApplicationRecord
  acts_as_paranoid

  enum type: { midterm: 0, project: 1, final: 2 }
  
  has_many :subject_exams
  has_many :subjects, through: :subject_exams

  has_many :user_exams
  has_many :users, thorough: :user_exams
end
