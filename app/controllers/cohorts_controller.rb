class CohortsController < ApplicationController
    before_action :require_login, except: [:index, :show]
  def index
    @cohorts = Cohort.all
  end

  def update
    @cohort = Cohort.find(params[:id])
    @newcohort = @cohort.update(name: params[:name], year: params[:year])
    redirect_to  "/cohorts"
  end

  def edit
  @cohort = Cohort.find(params[:id])
    @courses = Course.all

  end

  def destroy
  @course = Course.find(params[:id])
  @course.destroy
  redirect_to '/courses'
  end

  def show
    @cohort = Cohort.find(params[:id])

  end

  def new

  end

  def create
  @cohort = Cohort.create(name: params[:name], year: params[:year])
 Student.all.each do |students|
    @cohort.students<<(students)
 end
 Teacher.all.each do |teachers|
    @cohort.teachers<<(teachers)
 end
 Course.all.each do |courses|
    @cohort.courses<<(courses)
 end
    redirect_to '/cohorts'

  end
end
