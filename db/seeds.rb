# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Cohort.destroy_all
Course.destroy_all
Grade.destroy_all
Teacher.destroy_all
Student.destroy_all

teacher = Teacher.create(first_name: "fizal", last_name: "john", password: "johnfizal", age: 23, education:"GED", salary: 90000)
student = Student.create(first_name: "mikias", last_name: "negesse", password: "mik123", age:24, education: "GED")
course = Course.create(name:"Software", credit_hours: 4)
course2 = Course.create(name:"Software", credit_hours: 4)
grade = Grade.create(score:"A")
cohort = Cohort.create(name:"class 26", year:"2019")






cohort.courses<<(course)
cohort.courses<<(course2)
cohort.students<<(student)
cohort.teachers<<(teacher)
cohort.grades<<(grade)
cohort.save
