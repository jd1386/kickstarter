class FavoritesController < ApplicationController
before_action :require_signin
before_action :set_project, except: :index

def create
	@project.favorites.create!(user: current_user)
	redirect_to @project
	flash[:info] = "Successfully added to your favorites!"
end

def destroy
	favorite = current_user.favorites.find(params[:id])
	favorite.destroy
	redirect_to @project
	flash[:info] = "Successfully deleted from your favorites!"
end

def index
	@user = current_user
	@favorite_projects = @user.favorite_projects
end


private

def set_project
		@project = Project.find(params[:project_id])
end

end
