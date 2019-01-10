class TeacherController < ApplicationController
    before_action :require_login, except: [:index, :show]
  def index
    @teachers = Teacher.all
  end

  def update
  end

  def edit
  end

  def destroy
  end

  def show
    @teacher = Teacher.find(params[:id])
  end

  def new
  end

  def create
  end
end
