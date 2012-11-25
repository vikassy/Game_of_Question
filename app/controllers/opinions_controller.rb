class OpinionsController < ApplicationController

	def create 
		@opi = Opinion.new(params[:opinion])
		@opi.save
		redirect_to last_path(com: 1)
	end
end
