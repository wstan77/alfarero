class AddReferencesBlogCategoryToBlogEntry < ActiveRecord::Migration
  def change
    add_reference :blog_entries, :blog_category, index: true, foreign_key: true
  end
end
