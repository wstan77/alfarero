class BlogController < ApplicationController
  layout "application"
  def index
  	@entries = BlogEntry.all
  end
end
