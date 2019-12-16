class Exam < ApplicationRecord
  enum type: { midterm: 0, project: 1, final: 2 }
end
