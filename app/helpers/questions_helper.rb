module QuestionsHelper

	def questions_helper
		if @question.new_record?
			"Create New #{@question.tests.title} Question"
		else 
			"Edit #{@question.tests.title} Question"
		end
	end
end
