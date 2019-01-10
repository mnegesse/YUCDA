class ApplicationController < ActionController::Base
  include Clearance::Controller
  before_action :require_login, except: [:index, :show]

end
