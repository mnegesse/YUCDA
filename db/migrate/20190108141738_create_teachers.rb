class CreateTeachers < ActiveRecord::Migration[5.2]
  def change
    create_table :teachers do |t|
      t.string :first_name
      t.string :last_name
      t.string :password
      t.integer :age
      t.string :education
      t.integer :salary

      t.timestamps
    end
  end
end
