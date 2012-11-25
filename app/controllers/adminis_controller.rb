class AdminisController < ApplicationController
  def answers
  	@user = User.all 
  end

  def others
  	@opi = Opinion.all
  end
end
