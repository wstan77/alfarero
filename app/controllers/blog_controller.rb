class BlogController < ApplicationController
  layout "application"
  before_action :set_queries, only: [:show, :create_comment]
  def index
  	@section = 'blog'
  	@entries = BlogEntry.all
  	@categories = BlogCategory.all
    @blog_comments = BlogComment.all.limit(5).order("created_at asc")
  end

  def show 
    @blog.update_attribute(:count_view, @blog.count_view+1) 
    @blog_comment = BlogComment.new 
  end

  def create_comment   
    @blog_comment = BlogComment.new(blog_comments_params)
    @blog_comment.blog_entry_id = @blog.id
    @created_comment = false
    respond_to do |format|
      if @blog_comment.save
        @created_comment = true
        format.html {redirect_to blog_show_path(@blog.blog_category, @blog), notice: "Comentario creado"}
        format.js
      else 
        format.html { render :show }
        format.js
      end
    end 
  end

  private
  def blog_comments_params
    params.require(:blog_comment).permit!
  end

  def set_queries
    @blog = BlogEntry.find(params[:blog])
    @blog_comments = BlogComment.all.order("created_at asc")
    @categories = BlogCategory.all
  end
end
