class CreateBlogCategories < ActiveRecord::Migration
  def change
    create_table :blog_categories do |t|
      t.string :title
      t.references :admin, index: true, foreign_key: true
      t.integer :order_int, default: 1
      t.integer :blog_entries_count, default: 0

      t.timestamps null: false
    end
  end
end
