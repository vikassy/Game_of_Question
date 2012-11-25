class ApplicationController < ActionController::Base
	helper_method :redirect_to
	include TimerHelper
  protect_from_forgery
end
