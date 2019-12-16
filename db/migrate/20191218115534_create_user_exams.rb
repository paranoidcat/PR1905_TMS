class CreateUserExams < ActiveRecord::Migration[5.2]
  def change
    create_table :user_exams do |t|
      t.integer :user_id
      t.integer :exam_id
      t.decimal :score, precision: 2, scale: 1
      t.boolean :status, default: 0

      t.timestamps
    end
  end
end
