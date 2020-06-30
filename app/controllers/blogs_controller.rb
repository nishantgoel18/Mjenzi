class BlogsController < ApplicationController
	layout 'new_design'

  	def index
  		@blogs = Admin::Blog.all
  		@categories = Admin::Category.all
  	end

  	def show 
  		@blog = Admin::Blog.find_by(params[:slug])
  	end

end
