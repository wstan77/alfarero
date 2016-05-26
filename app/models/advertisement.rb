class Advertisement < ActiveRecord::Base
	belongs_to :admin
	validate :background_img, on: :create
	validates :title, :description, presence: true 
	enum text_position: [ :right, :left ] 
	mount_uploader :background_img, AdvertisementImgUploader
	mount_uploader :main_img, AdvertisementImgUploader
	
end

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
#  is_permanent   :boolean          default(TRUE)
#  start_at       :datetime
#  end_at         :datetime
#
