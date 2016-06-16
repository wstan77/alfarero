class BlogController < ApplicationController
  layout "application"
  def index
  	@section = 'blog'
  	@entries = BlogEntry.all
  	@categories = BlogCategory.all
  end

  def show
  	@blog = BlogEntry.find(params[:blog])
  	@categories = BlogCategory.all
  end
end
