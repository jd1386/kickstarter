class ProjectsController < ApplicationController

before_action :require_signin, except: [:index, :show]
before_action :check_project_owner, except: [:index, :show]

def index
	 @projects = Project.accepting_pledges_only
	#@projects = Project.all.order("created_at desc")
end

def show
	@project = Project.find(params[:id])
	@categories = @project.categories.order("id")
	@user = @project.user
	@pledges = @project.pledges.order("created_at desc")
	@pledge = @project.pledges.new
	@fans = @project.fans.order("created_at desc")

	if current_user
		@has_favorited = current_user.favorites.find_by(project_id: @project.id)
	end
end

def new
	@project = Project.new
end

def create
	@project = Project.new(project_params)
	@project.user = current_user
	if @project.save
		redirect_to @project
		flash[:success] = "Project successfully created!"
	else
		render :new
	end
end

def edit
	@project = Project.find(params[:id])
end

def update
	@project = Project.find(params[:id])
	if @project.update(project_params)
		redirect_to @project
		flash[:success] = "Project successfully edited!"
	else
		render :edit
	end
end

def destroy
	@project = Project.find(params[:id])
	@project.destroy
	redirect_to projects_path
	flash[:success] = "Project successfully deleted!"
end


private

	def project_params
		params.require(:project).permit(:name, :description, :target_pledge_amount, :website, :pledging_ends_on, :image, category_ids: [])
	end
	
	def check_project_owner
			current_user?(@user)
	end	

end