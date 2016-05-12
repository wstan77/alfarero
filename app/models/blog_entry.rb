# == Schema Information
#
# Table name: blog_entries
#
#  id          :integer          not null, primary key
#  admin_id    :integer
#  title       :string
#  intro       :string
#  content     :text
#  previus_img :string
#  is_deleted  :boolean          default(FALSE)
#  count_view  :integer          default(0)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_blog_entries_on_admin_id  (admin_id)
#

class BlogEntry < ActiveRecord::Base
  belongs_to :admin
  validates :title, :intro, :content, presence: true
end
