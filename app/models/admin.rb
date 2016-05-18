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

class Admin < ActiveRecord::Base
	has_many :blog_entries
	scope :active, -> { where(:is_deleted=>false) }  
	validates :names, :lastnames, :email, presence: true

	def full_name
		"#{names} #{lastnames}"
	end
end
