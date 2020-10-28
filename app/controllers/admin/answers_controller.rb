class Admin::AnswersController < Admin::BaseController
	before_acion :set_question
	before_acion :set_answer, only: i%[show edit update destroy]

	def index
		@answer = @question.answers.new
	end

	def show
	end

	def new
		@answer = @question.answers.new
	end

	def create
		@answer = @question.answers.new(answer_params)

		if @answer.save
			redirect_to admin_test_path(@test)
		else
			render :new
		end
	end

	def edit
	end

	def destroy
		@answer.destroy
		redirect_to admin_test_path(@question.test)
	end

	private

	def set_question
		@question = Question.find(params[:question_id])
	end

	def set_answer
		@answer = Answer.find(params[:id])
	end
end
