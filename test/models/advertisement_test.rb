# == Schema Information
#
# Table name: advertisements
#
#  id             :integer          not null, primary key
#  title          :string
#  description    :string
#  text_position  :integer          default(0)
#  url_info       :string
#  background_img :string
#  main_img       :string
#  is_visible     :boolean          default(TRUE)
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

require 'test_helper'

class AdvertisementTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
