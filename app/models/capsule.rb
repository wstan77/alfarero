class Capsule < ActiveRecord::Base
	belongs_to :admin
	validates :title, :intro, :content, presence: true

end

# == Schema Information
#
# Table name: capsules
#
#  id         :integer          not null, primary key
#  title      :string
#  content    :text
#  link_ref   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  admin_id   :integer
#
# Indexes
#
#  index_capsules_on_admin_id  (admin_id)
#
