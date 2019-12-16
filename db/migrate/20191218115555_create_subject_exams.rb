class CreateSubjectExams < ActiveRecord::Migration[5.2]
  def change
    create_table :subject_exams do |t|
      t.integer :subject_id
      t.integer :exam_id
      
      t.timestamps
    end
  end
end
