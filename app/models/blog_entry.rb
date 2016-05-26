class BlogEntry < ActiveRecord::Base
  belongs_to :admin
  belongs_to :blog_category
  validates :title, :intro, :content,:blog_category_id, presence: true
  mount_uploader :previus_img, BlogPreviusImgUploader

end

# == Schema Information
#
# Table name: blog_entries
#
#  id               :integer          not null, primary key
#  admin_id         :integer
#  title            :string
#  intro            :string
#  content          :text
#  previus_img      :string
#  is_deleted       :boolean          default(FALSE)
#  count_view       :integer          default(0)
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  blog_category_id :integer
#
# Indexes
#
#  index_blog_entries_on_admin_id          (admin_id)
#  index_blog_entries_on_blog_category_id  (blog_category_id)
#
