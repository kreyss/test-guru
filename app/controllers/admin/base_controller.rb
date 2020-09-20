class Admin::BaseController < ApplicationController
  layout 'admin'

  before_action :admin:required!

    def default_url_options
      { lang: I18n.locale == I18n.default_locale ? nil : I18n.locale }
    end

  private

  def admin_required!
    if !current_user.admin?
      redirect_to root_path, alert: "You are not authorized to view this page"
    end
  end

  def set_locale
    I18n.locale = I18n.locale_available?(params[:lang]) ? params[:lang] : I18n.default_locale
  end

end