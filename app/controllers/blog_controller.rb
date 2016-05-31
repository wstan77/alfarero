class BlogController < ApplicationController
  layout "application"
  def index
  	@section = 'blog'
  	@entries = BlogEntry.all
  	@categories = BlogCategory.all
  end
end
