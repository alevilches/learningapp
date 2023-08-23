class CreateLessons < ActiveRecord::Migration[7.0]
  def change
    create_table :lessons do |t|
      t.string :title
      t.string :question
      t.string :answer
      t.string :image
      t.timestamps
      t.references :course
    end
  end
end
