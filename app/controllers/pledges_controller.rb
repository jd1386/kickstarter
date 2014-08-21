class PledgesController < ApplicationController

before_action :set_project

def create
	@pledge = @project.pledges.new(pledge_params)

	if @pledge.save
		redirect_to @project
	else
		render :new
	end
end


private

	def set_project
		@project = Project.find(params[:project_id])
	end

	
	def pledge_params
		params.require(:pledge).permit(:name, :email, :comment, :amount)
	end

end
