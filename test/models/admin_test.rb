# == Schema Information
#
# Table name: admins
#
#  id         :integer          not null, primary key
#  names      :string
#  lastnames  :string
#  email      :string
#  password   :string
#  is_deleted :boolean          default(FALSE)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class AdminTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
