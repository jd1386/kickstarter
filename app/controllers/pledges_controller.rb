class PledgesController < ApplicationController

def show
	@project = Project.find(params[:project_id])
	@pledge = @project.pledges.find(params[:id])
end

end
