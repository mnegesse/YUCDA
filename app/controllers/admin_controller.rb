class AdminController < ApplicationController
    before_action :require_login, except: [:index, :show]
  def index
    @cohorts = Cohort.all
  end

  def update
  end

  def edit
  end

  def destroy
  end

  def show
  end

  def new
  end

  def create
  end
end
