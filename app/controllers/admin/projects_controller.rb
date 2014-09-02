class Admin::ProjectsController < ApplicationController

before_action :require_admin

def index
	@projects = Project.all.order('created_at desc')
	
end

def show
	@project = Project.find(params[:id])
end

def destroy
	@project = Project.find(params[:id])
	@project.destroy
	redirect_to admin_projects_path
	flash[:success] = "Project successfully deleted!"
end

end