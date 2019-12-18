class CreateUserCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :user_courses do |t|
      t.integer :user_id
      t.integer :course_id
      t.decimal :score, precision: 2 , scale: 1
      t.decimal :progress , precision: 3 , scale: 2

      t.timestamps
    end
  end
end
