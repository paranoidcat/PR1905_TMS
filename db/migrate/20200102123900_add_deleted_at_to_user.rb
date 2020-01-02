class AddDeletedAtToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :deleted_at, :datetime
    add_index :users, :deleted_at
    add_column :courses, :deleted_at, :datetime
    add_index :courses, :deleted_at
    add_column :subjects, :deleted_at, :datetime
    add_index :subjects, :deleted_at
    add_column :exams, :deleted_at, :datetime
    add_index :exams, :deleted_at
    add_column :admins, :deleted_at, :datetime
    add_index :admins, :deleted_at
    add_column :user_courses, :deleted_at, :datetime
    add_index :user_courses, :deleted_at
    add_column :user_subjects, :deleted_at, :datetime
    add_index :user_subjects, :deleted_at
    add_column :subject_courses, :deleted_at, :datetime
    add_index :subject_courses, :deleted_at
    add_column :subject_exams, :deleted_at, :datetime
    add_index :subject_exams, :deleted_at
    add_column :user_exams, :deleted_at, :datetime
    add_index :user_exams, :deleted_at
  end
end
