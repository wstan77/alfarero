class HomeController < ApplicationController
  layout "application"
  def index
  	@advertisements = Advertisement.order("id asc")
  	@capsule = Capsule.last
  end
end
