class User < ActiveRecord::Base
	has_many :answers
  attr_accessible :name , :play_name , :contacts
end
