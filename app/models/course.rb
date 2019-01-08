class Course < ApplicationRecord
  has_and_belongs_to_many :cohorts

  # has_and_belongs_to_many :teacher, through: :cohort
  # has_and_belongs_to_many :students, through: :cohort
  # has_and_belongs_to_many :grades, through: :cohort, :dependent => :destroy
end
