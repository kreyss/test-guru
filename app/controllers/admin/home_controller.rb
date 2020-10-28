class Admin::HomeController < Admin::BaseController
  def index
    if user_signed_in? && current_user.sign_in_count == 1
      flash.now[:notice] = "Привет, #{current_user.first_name}!"
    end
  end
end