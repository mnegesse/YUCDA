class CoursesController < ApplicationController
    before_action :require_login, except: [:index, :show]
  def index
    @courses = Course.all
  end

  def update
    @cohorts = Cohort.where(year: params[:cohort])
    @course = Course.find(params[:id])
    @newcourse = @course.update(name: params[:name], credit_hours: params[:credit_hours])
    # @newcourse.save
    if @cohorts.size >= 1
      @cohorts.each do |cohort|
        cohort.courses<<(@course)
      end
      redirect_to  "/courses"
    else
      redirect_to "/courses/:id"
    end
  end

  def edit
    @course = Course.find(params[:id])
  end

  def destroy
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
      redirect "/courses"
    else
      redirect_to "/courses/new"
    end
  end
end
