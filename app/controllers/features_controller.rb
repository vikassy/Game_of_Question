class FeaturesController < ApplicationController
	include UsersHelper
  def hint
    @tim = 1
  	if two_hints_used
  		redirect_to root_path
  	else
  		@user = User.find(cookies[:user_id])
  		@user.thint = @user.thint.to_i+1
  		@user.save
  		@hint = Quest.find(params[:quest_id])
  	end
  end

  def swap
  	if two_swaps_used
  		redirect_to root_path
  	else
  		@answer = Answer.new
  		@user = User.find(cookies[:user_id])
  		@user.swap = @user.swap.to_i+1
  		@user.save
  		@hint = Quest.find(params[:quest_id])
  	end

  end
	
	def hack
    last_10_mins?(cookies[:user_id].to_i)
    @tim = 1
  	if two_hacks_used
  		redirect_to root_path
  	else
  		@viewer = User.find(cookies[:user_id])
  		@user = User.find(params[:user_id])
  		@ans = @user.answers
  		@viewer.hack = @viewer.hack.to_i+1
  		@viewer.save
  	end		

  end  	

end
