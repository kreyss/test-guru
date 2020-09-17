module QuestionsHelper

  def questions_helper(question)
    if @question.new_record?
      "Create New #{@question.tests.title} Question"
    else 
      "Edit #{@question.tests.title} Question"
    end
  end
end
