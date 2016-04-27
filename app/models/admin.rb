class Admin < ActiveRecord::Base
	validates :names, :lastnames, :email, presence: true
end
