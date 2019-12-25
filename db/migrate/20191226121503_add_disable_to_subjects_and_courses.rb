class AddDisableToSubjectsAndCourses < ActiveRecord::Migration[5.2]
  def change
    add_column :subjects, :enable, :boolean, default: true
    add_column :courses, :enable, :boolean, default: true
    add_column :exams, :enable, :boolean, default: true
  end
end
