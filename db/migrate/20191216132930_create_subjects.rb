class CreateSubjects < ActiveRecord::Migration[5.2]
  def change
    create_table :subjects do |t|
      t.string :name, index: {unique: true}
      t.string :instruction
      t.string :introduction
      
      t.timestamps
    end
  end
end
