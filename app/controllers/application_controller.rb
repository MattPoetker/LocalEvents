class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user 

	def current_user 
		@current_user ||= Host.find(session[:host_id]) if session[:host_id] 
	end
	def require_user 
  		if current_user == nil
  			redirect_to '/login'
  			flash[:notice] = "You must login first"
  		end 
	end
end
