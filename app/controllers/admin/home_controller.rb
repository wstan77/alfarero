class Admin::HomeController < Devise::SessionsController
  layout "admin" 
  #before_action :authenticate_admin!

  def index
  end
end
