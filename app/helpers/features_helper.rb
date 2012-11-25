module FeaturesHelper

	def find_question(id)
		@ques = Quest.find(id)
		@ques.questions
	end

end
