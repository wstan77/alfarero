class AddBlogCommentsToBlogEntry < ActiveRecord::Migration
  def change
    add_column :blog_entries, :blog_comments_count, :integer, default: 0
  end
end
