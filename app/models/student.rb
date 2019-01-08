class Student < ApplicationRecord
  has_and_belongs_to_many :cohorts
  # has_many :grades, through: :cohorts
  # belongs_to_many :grades, though: :cohorts
  # has_and_belongs_to_many :grades, through: :cohort, :dependent => :destroy
  # has_and_belongs_to_many :courses, through: :cohort
  # has_and_belongs_to_many :teachers, through: :cohort
end
