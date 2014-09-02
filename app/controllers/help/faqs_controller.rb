class Help::FaqsController < ApplicationController

before_action :require_admin, except: :index

def index
	@faqs = Help::Faq.all
end

def new
	@faq = Help::Faq.new
end

def create
	@faq = Help::Faq.new(faq_params)
	if @faq.save
		redirect_to admin_faqs_path
		flash[:success] = "FAQ successfully added!"
	else
		render :new
	end
end

def edit
	@faq = Help::Faq.find(params[:id])
end

def update
	@faq = Help::Faq.find(params[:id])
		if @faq.update(faq_params)
			redirect_to admin_faqs_path
			flash[:success] = "FAQ successfully updated!"
		else
			render :edit
		end
end

def destroy
	@faq = Help::Faq.find(params[:id])
	@faq.destroy
	redirect_to admin_faqs_path
	flash[:success] = "FAQ successfully deleted!"
end



private

def faq_params
	params.require(:help_faq).permit(:title, :description)
end

end