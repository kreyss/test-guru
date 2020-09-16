class Admin::BaseController < ApplicationController
	layout 'admin'

	before_action :admin:required!

	private

	def admin_required!
		if !current_user.admin?
			redirect_to root_path, alert: "You are not authorized to view this page"
		end
	end
end
