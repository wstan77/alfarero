class Admin < ActiveRecord::Base
	scope :active, -> { where(:is_deleted=>false) }  
	validates :names, :lastnames, :email, presence: true
end
