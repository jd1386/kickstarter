class Admin::CategoriesController < ApplicationController

before_action :require_admin


def index
	@categories = Category.all.order('created_at desc')
end

def show
	@category = Category.find(params[:id])
	@projects = @category.projects
end

def new
	@category = Category.new
end

def create
	@category = Category.new(category_params)
	if @category.save
		redirect_to admin_categories_path
		flash[:success] = "Category successfully added!"
	else
		render :new
	end
end

def edit
	@category = Category.find(params[:id])
end

def update
	@category = Category.find(params[:id])
	if @category.update(category_params)
		redirect_to admin_categories_path
		flash[:success] = "#{@category.name} is successfully updated!"
	else
		render :edit
	end
end

def destroy
	@category = Category.find(params[:id])
	@category.destroy
	redirect_to admin_categories_path
	flash[:success] = "#{@category.name} successfully deleted!"
end


private

def category_params
	params.require(:category).permit(:name)
end

end
