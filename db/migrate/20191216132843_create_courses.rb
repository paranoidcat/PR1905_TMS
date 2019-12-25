class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :name, index: {unique: true}
      t.string :introduction

      t.timestamps
    end
  end
end
