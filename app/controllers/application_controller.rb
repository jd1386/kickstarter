class ApplicationController < ActionController::Base
  
  protect_from_forgery with: :exception

  private

  def require_signin
  	unless current_user
  		session[:intended_url] = request.url
  		redirect_to signin_path
  		flash[:warning] = "Please sign in."
  	end
  end

  def current_user
		@current_user ||= User.find(session[:user_id]) if session[:user_id]
	end

	def current_user?(user)
		current_user == user
	end

# check if the user is signed in. But learned that 'current_user' does exactly the same job. So kind of redundancy.
	def signedin?(user)
		true if session[:user_id]
	end

	def require_admin
		unless current_user_admin?
			redirect_to root_url
			flash[:danger] = "You are not authorized."
		end
	end

	def current_user_admin?
		current_user && current_user.admin?
	end

	helper_method :current_user, :current_user?, :current_user_admin?, :signedin?


end
