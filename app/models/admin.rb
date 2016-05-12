class Admin < ActiveRecord::Base
	has_many :blog_entries
	scope :active, -> { where(:is_deleted=>false) }  
	validates :names, :lastnames, :email, presence: true
end
