class CohortsCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :cohorts_courses, id: false do |t|
      t.belongs_to :cohort, index: true
      t.belongs_to :course, index: true
    end
  end
end
