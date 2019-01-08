# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_01_08_174228) do

  create_table "cohorts", force: :cascade do |t|
    t.string "name"
    t.integer "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cohorts_courses", id: false, force: :cascade do |t|
    t.integer "cohort_id"
    t.integer "course_id"
    t.index ["cohort_id"], name: "index_cohorts_courses_on_cohort_id"
    t.index ["course_id"], name: "index_cohorts_courses_on_course_id"
  end

  create_table "cohorts_grades", id: false, force: :cascade do |t|
    t.integer "cohort_id"
    t.integer "grade_id"
    t.index ["cohort_id"], name: "index_cohorts_grades_on_cohort_id"
    t.index ["grade_id"], name: "index_cohorts_grades_on_grade_id"
  end

  create_table "cohorts_students", id: false, force: :cascade do |t|
    t.integer "cohort_id"
    t.integer "student_id"
    t.index ["cohort_id"], name: "index_cohorts_students_on_cohort_id"
    t.index ["student_id"], name: "index_cohorts_students_on_student_id"
  end

  create_table "cohorts_teachers", id: false, force: :cascade do |t|
    t.integer "cohort_id"
    t.integer "teacher_id"
    t.index ["cohort_id"], name: "index_cohorts_teachers_on_cohort_id"
    t.index ["teacher_id"], name: "index_cohorts_teachers_on_teacher_id"
  end

  create_table "courses", force: :cascade do |t|
    t.string "name"
    t.integer "credit_hours"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "grades", force: :cascade do |t|
    t.string "score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "password"
    t.integer "age"
    t.string "education"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teachers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "password"
    t.integer "age"
    t.string "education"
    t.integer "salary"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
