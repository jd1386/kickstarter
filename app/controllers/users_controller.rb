class UsersController < ApplicationController

before_action :require_signin, only: [:index]
before_action :require_correct_user, only: [:edit, :update, :destroy]

def index
	@users = User.all.order('created_at desc')
end

def show
	@user = User.find(params[:id])
	@projects = @user.projects.order('created_at desc')
	@backed_projects = @user.backed_projects.order('created_at desc')
	@favorite_projects = @user.favorite_projects.order('created_at desc')
end

def new
	@user = User.new
end

def create
	@user = User.new(user_params)
	if @user.save
		session[:user_id] = @user.id
		redirect_to @user
		flash[:success] = "Welcome to Kickstarter!"
	else
		render :new
	end
end

def edit
# @user = User.find(params[:id]) is removed here because it's already declared in 'before_action :require_correct_user'
end

def update
# @user = User.find(params[:id]) is removed here because it's already declared in 'before_action :require_correct_user'
		if @user.update(user_params)
			redirect_to @user
			flash[:success] = "Successfully updated!"
		else
			render :edit
		end
end

def destroy
# @user = User.find(params[:id]) is removed here because it's already declared in 'before_action :require_correct_user'
	@user.destroy
	session[:user_id] = nil
	redirect_to root_url
	flash[:success] = "Account successfully deleted."
end

private

	def require_correct_user
		@user = User.find(params[:id])
		unless current_user?(@user)
			redirect_to root_url
			flash[:warning] = "You're not authorized."
		end
	end

	def user_params
		params.require(:user).permit(:name, :email, :password, :password_confirmation, :profile)
	end

end
