class Quest < ActiveRecord::Base
	has_many :answers
  attr_accessible :answer, :questions
end
