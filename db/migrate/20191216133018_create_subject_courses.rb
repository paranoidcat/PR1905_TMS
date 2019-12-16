class CreateSubjectCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :subject_courses do |t|
      t.integer :subject_id
      t.integer :course_id
      t.integer :subject_position , unique: true 

      t.timestamps
    end
  end
end
