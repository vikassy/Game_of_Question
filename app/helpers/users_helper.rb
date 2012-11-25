module UsersHelper

	def answered?(id)
		@user = User.find(cookies[:user_id])
		if @user.answers.empty? && id == 1
			return true
		else
			@user.answers.each do |f|
				if f.quest_id == id || f.quest_id == id-1 		
					return true
				end
			end
		end
		return false
	end

	def two_hints_used
		@user = User.find(cookies[:user_id])
		if !@user.thint.nil? && @user.thint >= 2
			return true
		else
			return false
		end
	end

	def two_swaps_used
		@user = User.find(cookies[:user_id])
		if !@user.swap.nil? && @user.swap >=2 
			return true
		else
			return false
		end
	end

	def two_hacks_used
		@user = User.find(cookies[:user_id])
		if !@user.hack.nil? && @user.hack >=2 
			return true
		else
			return false
		end
		
	end
end
