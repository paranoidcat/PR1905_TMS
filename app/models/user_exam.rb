class UserExam < ApplicationRecord
  enum status: {fail: 0, pass: 1}
end
