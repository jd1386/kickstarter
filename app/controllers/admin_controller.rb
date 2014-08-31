class AdminController < ApplicationController
before_action :require_admin

def index
	
end

def show
	@products = Product.all
	@categories = Category.all
	@users = User.all
end

end
