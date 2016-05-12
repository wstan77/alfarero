class BlogEntry < ActiveRecord::Base
  belongs_to :admin
  validates :title, :intro, :content, presence: true
end
