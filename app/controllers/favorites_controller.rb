class FavoritesController < ApplicationController
before_action :require_signin
before_action :set_project

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


private

def set_project
		@project = Project.find(params[:project_id])
end

end
