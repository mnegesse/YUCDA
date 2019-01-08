class Teacher < ApplicationRecord
  has_and_belongs_to_many :cohorts
  # has_and_belongs_to_many :courses, through: :cohort
  # has_and_belongs_to_many :students, through: :cohort
end
