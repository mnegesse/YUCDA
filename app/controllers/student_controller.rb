class StudentController < ApplicationController
    before_action :require_login, except: [:index, :show]
  def index
    @students = Student.all
  end

  def update
  @student = Student.find(params[:id])
  @newstudent = @student.update(first_name: params[:first_name], last_name: params[last_name], education: [:educatoin])
  redirect_to '/student'
  end

  def edit
    @student = Student.find(params[:id])
  end

  def destroy
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
  end

  def create
    @cohorts = Cohort.where(year: params[:cohort])
    if @cohorts.count >= 1
      @student = Student.create(first_name: params[:first_name], last_name: params[:last_name], password: params[:password], age: params[:age], education: [:educatoin])
      @cohorts.each do |cohort|
        cohort.students<<(@student)
      end
      redirect_to "/student"
    else
      redirect_to "/student/new"
    end
  end
end
