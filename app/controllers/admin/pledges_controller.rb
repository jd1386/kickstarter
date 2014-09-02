class Admin::PledgesController < ApplicationController

before_action :require_admin

def index
	@pledges = Pledge.all.order('project_id desc')
end

def show
	@pledge = Pledge.find(params[:id])
end

end