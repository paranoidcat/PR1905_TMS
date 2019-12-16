class CreateUserSubjects < ActiveRecord::Migration[5.2]
  def change
    create_table :user_subjects do |t|
      t.integer :user_id
      t.integer :subject_id
      t.decimal :score
      t.decimal :progress , precision: 3 , scale: 2
      

      t.timestamps
    end
  end
end
