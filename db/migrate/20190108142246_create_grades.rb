class CreateGrades < ActiveRecord::Migration[5.2]
  def change
    create_table :grades do |t|
      t.string :score
      # t.integer :student_id
      # t.integer :course_id
      t.timestamps
    end
  end
end
