class ApplicationController < ActionController::Base
  #  Protect every route by default.
  before_action :authenticate_user!
end
