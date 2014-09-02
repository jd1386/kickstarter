class Admin::UsersController < ApplicationController
before_action :require_admin

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
		redirect_to admin_users_path
		flash[:success] = "Successfully created!"
	else
		render :new
	end
end

def edit
	@user = User.find(params[:id]) 
end

def update
	@user = User.find(params[:id]) 
		if @user.update(user_params)
			redirect_to admin_users_path
			flash[:success] = "Successfully updated!"
		else
			render :edit
		end
end

def destroy
	@user = User.find(params[:id])
	@user.destroy
	redirect_to admin_users_path
	flash[:success] = "Account successfully deleted."
end

private

	def user_params
		params.require(:user).permit(:name, :email, :password, :password_confirmation, :profile)
	end

end