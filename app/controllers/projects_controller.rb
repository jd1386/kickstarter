class ProjectsController < ApplicationController

before_action :require_signin, except: [:index, :show]
before_action :require_admin, except: [:index, :show]

def index
	 @projects = Project.accepting_pledges_only
	#@projects = Project.all.order("created_at desc")
end

def show
	@project = Project.find(params[:id])
	@pledges = @project.pledges.order("created_at desc")
	@pledge = @project.pledges.new
end

def new
	@project = Project.new
end

def create
	@project = Project.new(project_params)
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
		params.require(:project).permit(:name, :description, :target_pledge_amount, :website, :pledging_ends_on, :team_members, :image)
	end
		

end