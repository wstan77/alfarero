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

class Advertisement < ActiveRecord::Base
	validates :title, :description, :background_img, :main_img, presence: true 
	enum text_position: [ :right, :left ] 
end
