class CohortsTeachers < ActiveRecord::Migration[5.2]
  def change
    create_table :cohorts_teachers, id: false do |t|
      t.belongs_to :cohort, index: true
      t.belongs_to :teacher, index: true
    end
  end
end
