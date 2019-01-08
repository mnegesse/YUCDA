class CohortsStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :cohorts_students, id: false do |t|
      t.belongs_to :cohort, index: true
      t.belongs_to :student, index: true
    end
  end
end
