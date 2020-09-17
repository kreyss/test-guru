module QuestionsHelper

  def questions_helper(question)
    if @question.new_record?
      "Create New #{@question.tests.title}"
    else 
      "Edit #{@question.tests.title}"
    end
  end
end
