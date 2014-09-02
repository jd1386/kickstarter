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
end

def update
end

def destroy
end



private

def faq_params
	params.require(:help_faq).permit(:title, :description)
end

end