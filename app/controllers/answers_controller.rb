class AnswersController < ApplicationController
	before_action :set_answer, only: [:show, :edit, :update, :desreoy]
	before_action :find_question, only: [:new, :create]

	def show
	end

	def new
    @answer = @question.answers.new		
	end

  def edit
  end

  def create
  	@answer = @question.answer.new(answer_params)

  	if @answer.save
  		redirect_to @answer
  	else
  		render :new
  	end
  end

  def update
  	if @answer.update(answer_params)
  		redirect_to @answer
  	else
  		render :edit
  	end
  end

  def destroy
  	@answer.destroy
  	redirect_to @answer.question
  end

  private

  def set_answer
  	@answer = Answer.find(params[:id])
  end

  def find_question
  	@question = Question.find(params[:question_id])
  end

  def answer_params
  	params.require(:answer).params(:body, :correct)
  end
end
