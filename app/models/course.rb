class Course < ApplicationRecord
  
  validates :name,  presence: true, uniqueness: true, length: { maximum: 50 }
  validates :introduction,  presence: true, length: { maximum: 1000 }
end
