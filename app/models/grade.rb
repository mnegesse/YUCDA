class Grade < ApplicationRecord
  has_and_belongs_to_many :cohorts
  # has_many :students, through: :cohorts
  # belongs_to_many :students, through: :cohorts
  # has_many :courses, through: :cohorts
  # belongs_to_many :courses, through: :cohorts
  # has_and_belongs_to_many :courses, through: :cohorts
end
