include UsersHelper
include TimerHelper
class QuestController < ApplicationController

  before_filter :check_timer


  def index
  	@tim = 1
  	@time = Time.now
  	@all = Quest.all
  	@user = User.find(cookies[:user_id])
  	@timer_sec = (60*45 - (@time.to_i - @user.created_at.to_i))%60
  	@timer_min = (60*45 - (@time.to_i - @user.created_at.to_i))/60
  end

end
