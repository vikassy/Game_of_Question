include UsersHelper
include TimerHelper 
class UsersController < ApplicationController

	before_filter :personal , only: [:show,:edit]
  #before_filter :check_timer 

	def new
    $i = 0;
		@user = User.new
		if cookies[:user_id]
			redirect_to index_path
		end
	end

	def create
    $i = $i+1
		@user = User.new(params[:user])
		if @user.save
			#create a cookie to note the user !!!
			cookies[:user_id] = @user.id
			redirect_to edit_user_path(@user)
		else
			render 'new'
		end
	end

	def index
    last_10_mins?(cookies[:user_id].to_i)
    @tim = 1
    if !two_hacks_used
      @user = User.all
    else
      redirect_to root_path
    end
	end

  def show
    last_10_mins?(cookies[:user_id].to_i)
    @tim = 1 
  	@title = "Questions"
  	@quests = Quest.all
  	@user = User.find(params[:id])
  	if params[:quest_id]
  		@ques = Quest.find(params[:quest_id].to_i)
  	else
  		@ques = Quest.find(1)
  	end
  	if answered?(@ques.id)
  		@question = @ques
  	else
  		redirect_to root_path
  	end
  	@answer = Answer.new
  end

  def edit
    @user = User.find(params[:id])
    @title = "Welcome to the play !!"
  end

  def update 
    @user = User.find(params[:id])
    if ($i == 1)
      @user.created_at = Time.now
      $i = $i+1
    end
    if @user.update_attributes(params[:user])
      redirect_to index_path
    else
      render 'edit'
    end
  end

  def delete
  	cookies.delete[:user_id]
  end

private
  def personal
  	@user = User.find(params[:id])
  	if cookies[:user_id].to_i != @user.id
  		redirect_to root_path , notice: "Trying to hack :P"
  	end
  	
  end

end