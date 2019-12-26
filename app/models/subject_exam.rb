class SubjectExam < ApplicationRecord
  acts_as_paranoid

  belongs_to :subject
  belongs_to :exam
end
