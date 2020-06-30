class CategoriesController < ApplicationController
  layout 'new_design'

  def show
  	@categories = Admin::Category.all
  	@category = Admin::Category.find_by(slug: params[:id])
  end

end
