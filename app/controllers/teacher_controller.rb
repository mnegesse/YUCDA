class TeacherController < ApplicationController
    before_action :require_login, except: [:index, :show]
  def index
    @teachers = Teacher.all
  end

  def update
    @teacher = Teacher.find(params[:id])
    @newteacher = @teacher.update(first_name: params[:first_name], last_name: params[:last_name], education: params[:education], salary: params[:salary])

    redirect_to '/teacher'
  end

  def edit
    @teacher = Teacher.find(params[:id])
  end

  def destroy
  end

  def show
    @teacher = Teacher.find(params[:id])
  end

  def new
  end

  def create
    @cohorts = Cohort.where(year: params[:cohort])
    if @cohorts.count >= 1
      @teacher = Teacher.create(first_name: params[:first_name], last_name: params[:last_name], password: params[:password], age: params[:age], education: params[:education], salary: params[:salary])
      @cohorts.each do |cohort|
        cohort.teachers<<(@teacher)
      end
      redirect_to "/teacher"
    else
      redirect_to "/teacher/new"
    end
  end
end
