class HomeController < ApplicationController
  layout "application"
  def index 
  	@section = 'home'
  	@advertisements = Advertisement.order("id asc")
  	@capsule = Capsule.last
  end
end
