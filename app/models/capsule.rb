class Capsule < ActiveRecord::Base
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
#
