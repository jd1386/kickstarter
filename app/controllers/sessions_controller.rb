class SessionsController < ApplicationController

def new

end

def create
	if user = User.authenticate(params[:email], params[:password])
		session[:user_id] = user.id
		redirect_to(session[:intended_url] || user)
		flash[:info] = "Welcome back, #{user.name}!"
		session[:intended_url] = nil
	else
		flash.now[:warning] = "Invalid Email or Password"
		render :new
	end
end

def destroy
	session[:user_id] = nil
	redirect_to root_url
	flash[:info] = "You are now signed out."
end

end