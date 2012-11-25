module TimerHelper


	def time_not_over?(user_id)
		@user = User.find(user_id)
		if (time_left(cookies[:user_id]) <= 0)
			return false 
		else
			return true
		end
	end

	def time_left(user_id)
		@user = User.find(user_id)
		@timer = (45*60)-(Time.now - @user.created_at).to_i
		return @timer
	end

	def check_timer
		@user_id = cookies[:user_id].to_i
		return time_not_over?(@user_id)
	end

	def timer_sec
		if cookies[:user_id]
			if time_not_over?(cookies[:user_id].to_i)
				@timer = time_left(cookies[:user_id].to_i)
				@timer_sec = (@timer%60).to_i
				return @timer_sec
			else
				redirect_to last_path and return nil
			end
		end
	end

	def timer_min
		if cookies[:user_id]
			if time_not_over?(cookies[:user_id])
				@timer = time_left(cookies[:user_id].to_i)
				@timer_min = (@timer/60).to_i
				return @timer_min
			else
				#redirect_to last_path and return nil
			end
		end
	end

	def last_10_mins?(user_id)
		if timer_min < 10
			if cookies[:user_id].to_i
				@usr = User.find(cookies[:user_id].to_i)
				@usr.hack = 0
				@usr.save
			end
		end
	end
end