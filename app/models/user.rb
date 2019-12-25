class User < ApplicationRecord
  acts_as_paranoid

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :omniauthable
  enum role: { user: 0, supervisor: 1}

  has_many :user_courses
  has_many :courses, through: :user_courses

  has_many :user_exams
  has_many :exams, through: :user_exams

  has_many :user_subjects
  has_many :subjects, through: :user_subjects
end
