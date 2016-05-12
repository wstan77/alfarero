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

require 'test_helper'

class BlogEntryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
