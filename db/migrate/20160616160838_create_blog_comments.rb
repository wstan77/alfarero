class CreateBlogComments < ActiveRecord::Migration
  def change
    create_table :blog_comments do |t|
      t.string :name
      t.string :email
      t.text :message
      t.references :blog_entry, index: true, foreign_key: true
      t.boolean :is_anonymous, default: false
      t.integer :status
      t.integer :revised_by
      t.datetime :revised_at

      t.timestamps null: false
    end
  end
end
