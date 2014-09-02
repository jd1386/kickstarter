class Admin::FaqsController < ApplicationController

before_action :require_admin

def index
	@faqs = Help::Faq.all
end


end