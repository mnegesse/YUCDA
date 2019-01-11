class CoursesController < ApplicationController
    before_action :require_login, except: [:index, :show]
  def index
    @courses = Course.all.reverse
  end

  def update
    @course = Course.find(params[:id])
    @newcourse = @course.update(name: params[:name], credit_hours: params[:credit_hours])
    redirect_to  "/courses"
  end

  def edit
    @course = Course.find(params[:id])
    @cohorts = Cohort.all
  end

  def destroy
  @course = Course.find(params[:id])
  @course.destroy
  redirect_to '/courses'
  end

  def show
    @course = Course.find(params[:id])

  end

  def new

  end

  def create
    @cohorts = Cohort.where(year: params[:cohort])
    if @cohorts.count >= 1
      @new = Course.create(name: params[:name], credit_hours: params[:credit_hours])
      @cohorts.each do |cohort|
        cohort.courses<<(@new)
      end
      redirect_to "/courses"
    else
      redirect_to "/courses/new"
    end
  end
end
