class Advertisement < ActiveRecord::Base
	validates :title, :description, :background_img, :main_img, presence: true 
	enum text_position: [ :right, :left ] 
end
