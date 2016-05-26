class BlogCategory < ActiveRecord::Base
  belongs_to :admin
  has_many :blog_categories
  validates :title, :order_int, presence: true 
end

# == Schema Information
#
# Table name: blog_categories
#
#  id                 :integer          not null, primary key
#  title              :string
#  admin_id           :integer
#  order_int          :integer          default(1)
#  blog_entries_count :integer          default(0)
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#
# Indexes
#
#  index_blog_categories_on_admin_id  (admin_id)
#
