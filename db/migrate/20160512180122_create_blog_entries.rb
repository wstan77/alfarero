class CreateBlogEntries < ActiveRecord::Migration
  def change
    create_table :blog_entries do |t|
      t.references :admin, index: true, foreign_key: true
      t.string :title
      t.string :intro
      t.text :content
      t.string :previus_img
      t.boolean :is_deleted, default: false
      t.integer :count_view, default: 0

      t.timestamps null: false
    end
  end
end
