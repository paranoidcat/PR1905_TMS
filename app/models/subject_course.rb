class SubjectCourse < ApplicationRecord
  acts_as_paranoid

  belongs_to :course
  belongs_to :subject

  #validates :subject_position, uniqueness: true
end
