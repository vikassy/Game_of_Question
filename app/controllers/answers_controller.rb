class AnswersController < ApplicationController

	def new
		@answer = Answer.new
	end

	def create
		@user = User.find(cookies[:user_id])
		params[:answer][:user_id] = cookies[:user_id]
		@answer = Answer.where(user_id: @user.id,quest_id: (params[:answer][:quest_id]).to_i )
		@time = params[:answer][:timetake].to_i
		@now = Time.now.to_i
		params[:answer][:timetake] = (@now - @time).to_i
		if @answer.empty?
			@answer = Answer.new(params[:answer])
			if @answer.save
				redirect_to index_path
			else
				render 'pages'
			end
		else
			@answer[0].update_attributes(params[:answer])
			redirect_to root_path
		end
	end


  def pages
  	@tim = 1
  	@time = Time.now
  	@title = "Questions"
  	@answer = Answer.new
  	@user_id = cookies[:user_id]
  	@timer_sec = (@time - @user_id.created_at)%60
  	@timer_min = (@time - @user_id.created_at)/60
  end

  def edit
    @user = User.find(params[:id])
  end

  def update

  end

  def last
  	if cookies[:user_id]
  		cookies.delete(:user_id)
  	end
  	@opi = Opinion.new
  end
end
