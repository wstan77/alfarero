class BlogComment < ActiveRecord::Base
  belongs_to :blog_entry, :counter_cache => true
  validates :name, :message, presence: { message: "Este campo es requerido" }
end

# == Schema Information
#
# Table name: blog_comments
#
#  id            :integer          not null, primary key
#  name          :string
#  email         :string
#  message       :text
#  blog_entry_id :integer
#  is_anonymous  :boolean          default(FALSE)
#  status        :integer
#  revised_by    :integer
#  revised_at    :datetime
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
# Indexes
#
#  index_blog_comments_on_blog_entry_id  (blog_entry_id)
#
