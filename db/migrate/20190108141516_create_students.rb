class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.string :password
      t.integer :age
      t.string :education
      # t.integer :grade_id

      t.timestamps
    end
  end
end
