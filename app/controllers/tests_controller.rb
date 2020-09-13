class TestsController < ApplicationController
  before_action :find_test, only: [:show, :edit, :update, :destroy, :start]

  def index 
    @tests = Test.all
  end

  def show
  end 

  def new
    @test = Test.new
  end

  def create
    @test = Test.new(test_params)

      if @test.save
      redirect_to tests_path
    else 
      render :new
    end
  end

  def edit
  end

  def update
    @test = @test.update(test_params)

    if @test.save
      redirect_to tests_path
    else 
      render :edit
    end
  end

  def destroy
    @test.destroy
    redirect_to test_path
  end

  def start
    current_user.tests.push(@test)
    redirect_to urrent_user.test_passage(@test)
  end

  private

  def find_test
    @test = Test.find(params[:id])
  end

  def test_params
    params.require(:test).permit(:title, :level, :category_id)
  end
end