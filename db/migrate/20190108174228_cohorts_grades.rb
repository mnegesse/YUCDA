class CohortsGrades < ActiveRecord::Migration[5.2]
  def change
    create_table :cohorts_grades, id: false do |t|
      t.belongs_to :cohort, index: true
      t.belongs_to :grade, index: true
    end
  end
end
