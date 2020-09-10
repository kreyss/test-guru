class SessionsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[new create]

  def new
  end

  def create
    user = User.find_by(email: params[:email])

    if user&.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to cookies[:original_path]
    else
      flash.now[:alert] = 'Confirm your email and password'
      render :new
    end
  end

  def destroy
    reset_session
    @current_user = nil
    redirect_to login_path
  end
end
