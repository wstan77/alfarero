class BlogController < ApplicationController
  layout "application"
  def index
  	@section = 'blog'
  	@entries = BlogEntry.all
  end
end
