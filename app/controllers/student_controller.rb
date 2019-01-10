class StudentController < ApplicationController
    before_action :require_login, except: [:index, :show]
  def index
    @students = Student.all 
  end

  def update
  end

  def edit
  end

  def destroy
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
  end

  def create
  end
end
